.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field private suppressPrepareError:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 89
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V
    .locals 6
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "progressiveMediaExtractorFactory"    # Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 130
    new-instance v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v4, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V
    .locals 0
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "progressiveMediaExtractorFactory"    # Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
    .param p3, "drmSessionManagerProvider"    # Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;
    .param p4, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p5, "continueLoadingCheckIntervalBytes"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 159
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 160
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 161
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 162
    iput p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 163
    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "extractorsFactory"    # Landroidx/media3/extractor/ExtractorsFactory;

    .line 109
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V

    .line 110
    return-void
.end method

.method static synthetic lambda$new$0(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 1
    .param p0, "extractorsFactory"    # Landroidx/media3/extractor/ExtractorsFactory;
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 109
    new-instance v0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$setDownloadExecutor$1(Lcom/google/common/base/Supplier;Landroidx/media3/common/util/Consumer;)Landroidx/media3/exoplayer/util/ReleasableExecutor;
    .locals 1
    .param p0, "downloadExecutor"    # Lcom/google/common/base/Supplier;
    .param p1, "downloadExecutorReleaser"    # Landroidx/media3/common/util/Consumer;

    .line 234
    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/util/ReleasableExecutor;->from(Ljava/util/concurrent/Executor;Landroidx/media3/common/util/Consumer;)Landroidx/media3/exoplayer/util/ReleasableExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
    .locals 11
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 247
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 252
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget-boolean v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->suppressPrepareError:Z

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IZLcom/google/common/base/Supplier;Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;)V

    .line 248
    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 1

    .line 261
    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 0
    .param p1, "continueLoadingCheckIntervalBytes"    # I

    .line 189
    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 190
    return-object p0
.end method

.method public setDownloadExecutor(Lcom/google/common/base/Supplier;Landroidx/media3/common/util/Consumer;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/concurrent/Executor;",
            ">(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;",
            "Landroidx/media3/common/util/Consumer<",
            "TT;>;)",
            "Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;"
        }
    .end annotation

    .line 233
    .local p1, "downloadExecutor":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    .local p2, "downloadExecutorReleaser":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<TT;>;"
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/base/Supplier;Landroidx/media3/common/util/Consumer;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    .line 235
    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "drmSessionManagerProvider"    # Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 212
    nop

    .line 213
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 218
    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 168
    nop

    .line 169
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 174
    return-object p0
.end method

.method setSuppressPrepareError(Z)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 0
    .param p1, "suppressPrepareError"    # Z

    .line 204
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->suppressPrepareError:Z

    .line 205
    return-object p0
.end method
