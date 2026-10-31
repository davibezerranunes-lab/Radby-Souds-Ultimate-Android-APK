.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Landroidx/media3/common/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Landroidx/media3/common/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field deviceVolumeControlEnabled:Z

.field dynamicSchedulingEnabled:Z

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field maxSeekToPreviousPositionMs:J

.field mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field playerName:Ljava/lang/String;

.field priority:I

.field priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field skipSilenceEnabled:Z

.field suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

.field suppressPlaybackOnUnsuitableOutput:Z

.field trackSelectorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 563
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;

    .line 583
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 587
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 629
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 630
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .param p4, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .param p5, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;
    .param p6, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p7, "analyticsCollector"    # Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 658
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v3, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda10;

    invoke-direct {v3, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda12;

    invoke-direct {v4, p4}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/exoplayer/trackselection/TrackSelector;)V

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda13;

    invoke-direct {v5, p5}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda14;

    invoke-direct {v6, p6}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;

    invoke-direct {v7, p7}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    .line 666
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-static {p6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {p7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 605
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda20;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda21;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 606
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 677
    .local p2, "renderersFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/RenderersFactory;>;"
    .local p3, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda16;

    invoke-direct {v4, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda17;

    invoke-direct {v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda17;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda18;

    invoke-direct {v6, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda19;

    invoke-direct {v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda19;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    .line 685
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 694
    .local p2, "renderersFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/RenderersFactory;>;"
    .local p3, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .local p4, "trackSelectorSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/trackselection/TrackSelector;>;"
    .local p5, "loadControlSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/LoadControl;>;"
    .local p6, "bandwidthMeterSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/upstream/BandwidthMeter;>;"
    .local p7, "analyticsCollectorFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 696
    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 697
    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 698
    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    .line 699
    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 700
    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 701
    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 702
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 703
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    .line 705
    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    .line 706
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 707
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 708
    sget-object v0, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 709
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    .line 710
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 711
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    .line 712
    new-instance v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 713
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 714
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    .line 715
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 716
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    .line 717
    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    .line 718
    const/16 v0, -0x3e8

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    .line 719
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 565
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 566
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$10(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0
    .param p0, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 662
    return-object p0
.end method

.method static synthetic lambda$new$11(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0
    .param p0, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;

    .line 663
    return-object p0
.end method

.method static synthetic lambda$new$12(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0
    .param p0, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 664
    return-object p0
.end method

.method static synthetic lambda$new$13(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0
    .param p0, "analyticsCollector"    # Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 665
    return-object p0
.end method

.method static synthetic lambda$new$14(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 681
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$15(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 683
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;

    .line 585
    return-object p0
.end method

.method static synthetic lambda$new$3(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 586
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$4(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 605
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$5(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 605
    return-object p0
.end method

.method static synthetic lambda$new$6(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;

    .line 629
    return-object p0
.end method

.method static synthetic lambda$new$7(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 629
    return-object p0
.end method

.method static synthetic lambda$new$8(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;

    .line 660
    return-object p0
.end method

.method static synthetic lambda$new$9(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 661
    return-object p0
.end method

.method static synthetic lambda$setAnalyticsCollector$21(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0
    .param p0, "analyticsCollector"    # Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 891
    return-object p0
.end method

.method static synthetic lambda$setBandwidthMeter$20(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0
    .param p0, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 858
    return-object p0
.end method

.method static synthetic lambda$setLoadControl$19(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0
    .param p0, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;

    .line 842
    return-object p0
.end method

.method static synthetic lambda$setMediaSourceFactory$17(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 810
    return-object p0
.end method

.method static synthetic lambda$setRenderersFactory$16(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;

    .line 795
    return-object p0
.end method

.method static synthetic lambda$setTrackSelector$18(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0
    .param p0, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 826
    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 4

    .line 1346
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1347
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 1348
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    if-nez v0, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    if-eqz v0, :cond_0

    .line 1351
    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    .line 1353
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    return-object v0
.end method

.method buildSimpleExoPlayer()Landroidx/media3/exoplayer/SimpleExoPlayer;
    .locals 2

    .line 1357
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1358
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 1359
    new-instance v0, Landroidx/media3/exoplayer/SimpleExoPlayer;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "dynamicSchedulingEnabled"    # Z

    .line 751
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 752
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->dynamicSchedulingEnabled:Z

    .line 753
    return-object p0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "timeoutMs"    # J

    .line 733
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 734
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    .line 735
    return-object p0
.end method

.method public setAnalyticsCollector(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "analyticsCollector"    # Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 889
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 890
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 892
    return-object p0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 947
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 948
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 949
    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    .line 950
    return-object p0
.end method

.method public setBandwidthMeter(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 856
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 857
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 859
    return-object p0
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 1262
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1263
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 1264
    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "detachSurfaceTimeoutMs"    # J

    .line 1186
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1187
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 1188
    return-object p0
.end method

.method public setDeviceVolumeControlEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "deviceVolumeControlEnabled"    # Z

    .line 1020
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1021
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 1022
    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "handleAudioBecomingNoisy"    # Z

    .line 990
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 991
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    .line 992
    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Landroidx/media3/exoplayer/LivePlaybackSpeedControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "livePlaybackSpeedControl"    # Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 1222
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1223
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 1224
    return-object p0
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;

    .line 840
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 841
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 843
    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 873
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 874
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 876
    return-object p0
.end method

.method public setMaxSeekToPreviousPositionMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1148
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1149
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    .line 1150
    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 808
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 809
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 811
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "playerName"    # Ljava/lang/String;

    .line 1335
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1336
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    .line 1337
    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "pauseAtEndOfMediaItems"    # Z

    .line 1206
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1207
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    .line 1208
    return-object p0
.end method

.method public setPlaybackLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "playbackLooper"    # Landroid/os/Looper;

    .line 1301
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1302
    new-instance v0, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 1303
    return-object p0
.end method

.method public setPlaybackLooperProvider(Landroidx/media3/exoplayer/PlaybackLooperProvider;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "playbackLooperProvider"    # Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 1317
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1318
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 1319
    return-object p0
.end method

.method public setPriority(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "priority"    # I

    .line 909
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 910
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    .line 911
    return-object p0
.end method

.method public setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "priorityTaskManager"    # Landroidx/media3/common/PriorityTaskManager;

    .line 927
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 928
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 929
    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "releaseTimeoutMs"    # J

    .line 1167
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1168
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    .line 1169
    return-object p0
.end method

.method public setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;

    .line 793
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 794
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 796
    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2
    .param p1, "seekBackIncrementMs"    # J

    .line 1111
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1112
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1113
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    .line 1114
    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2
    .param p1, "seekForwardIncrementMs"    # J

    .line 1128
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1129
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1130
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 1131
    return-object p0
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 1095
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1096
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/SeekParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 1097
    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 1005
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1006
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    .line 1007
    return-object p0
.end method

.method public setSuitableOutputChecker(Landroidx/media3/exoplayer/SuitableOutputChecker;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "suitableOutputChecker"    # Landroidx/media3/exoplayer/SuitableOutputChecker;

    .line 1283
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1284
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    .line 1285
    return-object p0
.end method

.method public setSuppressPlaybackOnUnsuitableOutput(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "suppressPlaybackOnUnsuitableOutput"    # Z

    .line 778
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 779
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    .line 780
    return-object p0
.end method

.method public setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 824
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 825
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/exoplayer/trackselection/TrackSelector;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    .line 827
    return-object p0
.end method

.method public setUseLazyPreparation(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "useLazyPreparation"    # Z

    .line 1080
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1081
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 1082
    return-object p0
.end method

.method public setUsePlatformDiagnostics(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "usePlatformDiagnostics"    # Z

    .line 1245
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1246
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    .line 1247
    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "videoChangeFrameRateStrategy"    # I

    .line 1061
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1062
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 1063
    return-object p0
.end method

.method public setVideoScalingMode(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "videoScalingMode"    # I

    .line 1038
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1039
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    .line 1040
    return-object p0
.end method

.method public setWakeMode(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .param p1, "wakeMode"    # I

    .line 972
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 973
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    .line 974
    return-object p0
.end method
