.class public final Landroidx/media3/exoplayer/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadHelper$UnreleaseableRendererCapabilitiesList;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$LiveContentUnsupportedException;
    }
.end annotation


# static fields
.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;


# instance fields
.field private callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

.field private final callbackHandler:Landroid/os/Handler;

.field private immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isPreparedWithMedia:Z

.field private final localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

.field private mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

.field private final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private final rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

.field private final scratchSet:Landroid/util/SparseIntArray;

.field private trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 112
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RendererCapabilitiesList;)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p4, "rendererCapabilities"    # Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 365
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 366
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V

    invoke-direct {v0, p3, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 368
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 369
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    .line 370
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 371
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    .line 372
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->window:Landroidx/media3/common/Timeline$Window;

    .line 373
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;[Landroidx/media3/exoplayer/RendererCapabilities;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p4, "rendererCapabilities"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$UnreleaseableRendererCapabilitiesList;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper$UnreleaseableRendererCapabilitiesList;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RendererCapabilitiesList;)V

    .line 346
    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/offline/DownloadHelper;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/offline/DownloadHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->onMediaPrepared()V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/offline/DownloadHelper;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 99
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->onMediaPreparationFailed(Ljava/io/IOException;)V

    return-void
.end method

.method private addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 703
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 708
    iget-object v0, p2, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    .line 709
    .local v1, "override":Landroidx/media3/common/TrackSelectionOverride;
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 710
    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v3

    .line 709
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 711
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 712
    .end local v1    # "override":Landroidx/media3/common/TrackSelectionOverride;
    goto :goto_0

    .line 713
    :cond_0
    return-void
.end method

.method private assertPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 773
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 774
    return-void
.end method

.method public static createMediaSource(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p0, "downloadRequest"    # Landroidx/media3/exoplayer/offline/DownloadRequest;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 290
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->createMediaSource(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaSource(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p0, "downloadRequest"    # Landroidx/media3/exoplayer/offline/DownloadRequest;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 307
    nop

    .line 308
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadRequest;->toMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 307
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->createMediaSourceInternal(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method private static createMediaSourceInternal(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 833
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    sget-object v1, Landroidx/media3/extractor/ExtractorsFactory;->EMPTY:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 835
    .local v0, "mediaSourceFactory":Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    if-eqz p2, :cond_0

    .line 836
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 838
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    return-object v1
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 179
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 180
    nop

    .line 182
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 208
    nop

    .line 210
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 208
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p3, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 6
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p4, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 269
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z

    move-result v0

    .line 270
    .local v0, "isProgressive":Z
    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 271
    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 273
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 274
    move-object v4, v3

    goto :goto_2

    .line 275
    :cond_2
    nop

    .line 276
    invoke-static {p3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/datasource/DataSource$Factory;

    .line 275
    invoke-static {p0, v4, p4}, Landroidx/media3/exoplayer/offline/DownloadHelper;->createMediaSourceInternal(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v4

    .line 278
    :goto_2
    if-eqz p2, :cond_3

    .line 280
    new-instance v1, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->createRendererCapabilitiesList()Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;

    move-result-object v1

    goto :goto_3

    .line 281
    :cond_3
    new-instance v5, Landroidx/media3/exoplayer/offline/DownloadHelper$UnreleaseableRendererCapabilitiesList;

    new-array v1, v1, [Landroidx/media3/exoplayer/RendererCapabilities;

    invoke-direct {v5, v1, v3}, Landroidx/media3/exoplayer/offline/DownloadHelper$UnreleaseableRendererCapabilitiesList;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V

    move-object v1, v5

    :goto_3
    invoke-direct {v2, p0, v4, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RendererCapabilitiesList;)V

    .line 271
    return-object v2
.end method

.method public static getDefaultTrackSelectorParameters(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static getRendererCapabilities(Landroidx/media3/exoplayer/RenderersFactory;)[Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 6
    .param p0, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    nop

    .line 158
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadHelper$1;

    invoke-direct {v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$1;-><init>()V

    new-instance v3, Landroidx/media3/exoplayer/offline/DownloadHelper$2;

    invoke-direct {v3}, Landroidx/media3/exoplayer/offline/DownloadHelper$2;-><init>()V

    new-instance v4, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v5, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 157
    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/RenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v0

    .line 163
    .local v0, "renderers":[Landroidx/media3/exoplayer/Renderer;
    array-length v1, v0

    new-array v1, v1, [Landroidx/media3/exoplayer/RendererCapabilities;

    .line 164
    .local v1, "capabilities":[Landroidx/media3/exoplayer/RendererCapabilities;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 165
    aget-object v3, v0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v3

    aput-object v3, v1, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z
    .locals 2
    .param p0, "localConfiguration"    # Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 842
    iget-object v0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$createMediaSourceInternal$6(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 0
    .param p0, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p1, "unusedMediaItem"    # Landroidx/media3/common/MediaItem;

    .line 836
    return-object p0
.end method

.method static synthetic lambda$getRendererCapabilities$0(Landroidx/media3/common/text/CueGroup;)V
    .locals 0
    .param p0, "cues"    # Landroidx/media3/common/text/CueGroup;

    .line 161
    return-void
.end method

.method static synthetic lambda$getRendererCapabilities$1(Landroidx/media3/common/Metadata;)V
    .locals 0
    .param p0, "metadata"    # Landroidx/media3/common/Metadata;

    .line 162
    return-void
.end method

.method static synthetic lambda$new$2()V
    .locals 0

    .line 370
    return-void
.end method

.method private onMediaPreparationFailed(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .line 746
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method

.method private onMediaPrepared()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 717
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v0, v0

    .line 721
    .local v0, "periodCount":I
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->size()I

    move-result v1

    .line 722
    .local v1, "rendererCount":I
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    const-class v6, Ljava/util/List;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/util/List;

    iput-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 724
    new-array v2, v2, [I

    aput v1, v2, v4

    aput v0, v2, v5

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 727
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 728
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    .line 729
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    .line 730
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v3

    .line 727
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 726
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "i":I
    :cond_1
    new-array v2, v0, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 734
    new-array v2, v0, [Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 735
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 736
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v4, v4, v2

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    aput-object v4, v3, v2

    .line 737
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 738
    .local v3, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v5, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 739
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aput-object v5, v4, v2

    .line 735
    .end local v3    # "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 741
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->setPreparedWithMedia()V

    .line 742
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    return-void
.end method

.method private runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 11
    .param p1, "periodIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 789
    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v2, v2, p1

    new-instance v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 791
    invoke-virtual {v4, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 788
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 793
    .local v0, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_7

    .line 794
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    .line 795
    .local v2, "newSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-nez v2, :cond_0

    .line 796
    goto/16 :goto_6

    .line 798
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    .line 800
    .local v3, "existingSelectionList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    const/4 v4, 0x0

    .line 801
    .local v4, "mergedWithExistingSelection":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 802
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 803
    .local v6, "existingSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v7

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 805
    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 806
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_1

    .line 807
    iget-object v8, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 809
    .end local v7    # "k":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "k":I
    :goto_3
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 810
    iget-object v8, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v2, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 812
    .end local v7    # "k":I
    :cond_2
    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    .line 813
    .local v7, "mergedTracks":[I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    iget-object v9, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 814
    iget-object v9, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    .line 813
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 816
    .end local v8    # "k":I
    :cond_3
    new-instance v8, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;

    .line 817
    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .line 816
    invoke-interface {v3, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 818
    const/4 v4, 0x1

    .line 819
    goto :goto_5

    .line 801
    .end local v6    # "existingSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v7    # "mergedTracks":[I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 822
    .end local v5    # "j":I
    :cond_5
    :goto_5
    if-nez v4, :cond_6

    .line 823
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v2    # "newSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v3    # "existingSelectionList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    .end local v4    # "mergedWithExistingSelection":Z
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 826
    .end local v1    # "i":I
    :cond_7
    return-object v0
.end method

.method private setPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    .line 760
    return-void
.end method


# virtual methods
.method public varargs addAudioLanguagesToSelection([Ljava/lang/String;)V
    .locals 9
    .param p1, "languages"    # [Ljava/lang/String;

    .line 541
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 543
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 544
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 546
    .local v0, "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 548
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 549
    .local v6, "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v7

    .line 550
    .local v7, "trackType":I
    if-eq v7, v1, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 548
    nop

    .end local v6    # "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    .end local v7    # "trackType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 556
    .local v1, "periodCount":I
    array-length v2, p1

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, p1, v4

    .line 557
    .local v3, "language":Ljava/lang/String;
    nop

    .line 558
    invoke-virtual {v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v5

    .line 559
    .local v5, "parameters":Landroidx/media3/common/TrackSelectionParameters;
    const/4 v6, 0x0

    .local v6, "periodIndex":I
    :goto_3
    if-ge v6, v1, :cond_2

    .line 560
    invoke-direct {p0, v6, v5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 556
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "parameters":Landroidx/media3/common/TrackSelectionParameters;
    .end local v6    # "periodIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 565
    .end local v0    # "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    .end local v1    # "periodCount":I
    :cond_3
    nop

    .line 566
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs addTextLanguagesToSelection(Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "selectUndeterminedTextLanguage"    # Z
    .param p2, "languages"    # [Ljava/lang/String;

    .line 581
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 583
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 584
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 585
    .local v0, "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 587
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 589
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 590
    .local v6, "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v7

    .line 591
    .local v7, "trackType":I
    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 589
    nop

    .end local v6    # "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    .end local v7    # "trackType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 597
    .local v1, "periodCount":I
    array-length v2, p2

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, p2, v4

    .line 598
    .local v3, "language":Ljava/lang/String;
    nop

    .line 599
    invoke-virtual {v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v5

    .line 600
    .local v5, "parameters":Landroidx/media3/common/TrackSelectionParameters;
    const/4 v6, 0x0

    .local v6, "periodIndex":I
    :goto_3
    if-ge v6, v1, :cond_2

    .line 601
    invoke-direct {p0, v6, v5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 597
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "parameters":Landroidx/media3/common/TrackSelectionParameters;
    .end local v6    # "periodIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 606
    .end local v0    # "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    .end local v1    # "periodCount":I
    :cond_3
    nop

    .line 607
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addTrackSelection(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 2
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 524
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 525
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    nop

    .line 529
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addTrackSelectionForSingleRenderer(IILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "rendererIndex"    # I
    .param p3, "trackSelectorParameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p4, "overrides":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 627
    invoke-virtual {p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 628
    .local v0, "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 629
    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V

    goto :goto_3

    .line 634
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v1, v1, p1

    .line 635
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    .line 636
    .local v1, "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 637
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {v0, p2, v1, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 638
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 643
    .end local v0    # "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .end local v1    # "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v2    # "i":I
    :cond_3
    :goto_3
    nop

    .line 644
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearTrackSelections(I)V
    .locals 2
    .param p1, "periodIndex"    # I

    .line 488
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 489
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 490
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getDownloadRequest(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 666
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 668
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 670
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v1

    goto :goto_0

    .line 672
    :cond_0
    const/4 v1, 0x0

    .line 669
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setKeySetId([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 673
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setData([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 675
    .local v0, "requestBuilder":Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-nez v1, :cond_1

    .line 676
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->build()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v1

    return-object v1

    .line 678
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/StreamKey;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v2, "allSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    array-length v3, v3

    .line 682
    .local v3, "periodCount":I
    const/4 v4, 0x0

    .local v4, "periodIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 683
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 684
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v4

    array-length v5, v5

    .line 685
    .local v5, "rendererCount":I
    const/4 v6, 0x0

    .local v6, "rendererIndex":I
    :goto_2
    if-ge v6, v5, :cond_2

    .line 686
    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 685
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 688
    .end local v6    # "rendererIndex":I
    :cond_2
    iget-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v6, v6, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v6, v6, v4

    invoke-interface {v6, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 682
    .end local v5    # "rendererCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 690
    .end local v4    # "periodIndex":I
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->build()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v4

    return-object v4
.end method

.method public getDownloadRequest([B)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 1
    .param p1, "data"    # [B

    .line 654
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 3

    .line 406
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    return-object v1

    .line 409
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 410
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 411
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    goto :goto_0

    .line 412
    :cond_1
    nop

    .line 410
    :goto_0
    return-object v1
.end method

.method public getMappedTrackInfo(I)Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 464
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 465
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPeriodCount()I
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 424
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v0, v0

    return v0
.end method

.method public getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 452
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 453
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackSelections(II)Ljava/util/List;
    .locals 1
    .param p1, "periodIndex"    # I
    .param p2, "rendererIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 478
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getTracks(I)Landroidx/media3/common/Tracks;
    .locals 2
    .param p1, "periodIndex"    # I

    .line 436
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 437
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onMediaPreparationFailed$5$androidx-media3-exoplayer-offline-DownloadHelper(Ljava/io/IOException;)V
    .locals 1
    .param p1, "error"    # Ljava/io/IOException;

    .line 746
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;->onPrepareError(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method synthetic lambda$onMediaPrepared$4$androidx-media3-exoplayer-offline-DownloadHelper()V
    .locals 1

    .line 742
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;->onPrepared(Landroidx/media3/exoplayer/offline/DownloadHelper;)V

    return-void
.end method

.method synthetic lambda$prepare$3$androidx-media3-exoplayer-offline-DownloadHelper(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    .line 387
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;->onPrepared(Landroidx/media3/exoplayer/offline/DownloadHelper;)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    .line 382
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 383
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    .line 384
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/offline/DownloadHelper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    goto :goto_1

    .line 387
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper;Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 393
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->release()V

    .line 396
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->release()V

    .line 397
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v0}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->release()V

    .line 398
    return-void
.end method

.method public replaceTrackSelections(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 2
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 505
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 506
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->clearTrackSelections(I)V

    .line 507
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    nop

    .line 511
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
