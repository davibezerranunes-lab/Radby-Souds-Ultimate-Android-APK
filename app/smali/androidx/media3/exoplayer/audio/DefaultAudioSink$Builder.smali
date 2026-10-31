.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field private audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

.field private audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

.field private audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

.field private audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

.field private buildCalled:Z

.field private final context:Landroid/content/Context;

.field private enableAudioTrackPlaybackParams:Z

.field private enableFloatOutput:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    .line 295
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 296
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 297
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    .line 307
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 308
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 309
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    .line 310
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/common/audio/AudioProcessorChain;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;
    .locals 2

    .line 437
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 438
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->buildCalled:Z

    .line 439
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/common/audio/AudioProcessor;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    .line 442
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    if-nez v0, :cond_1

    .line 443
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 445
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public setAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "audioCapabilities"    # Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 323
    return-object p0
.end method

.method public setAudioOffloadSupportProvider(Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "audioOffloadSupportProvider"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 406
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 407
    return-object p0
.end method

.method public setAudioProcessorChain(Landroidx/media3/common/audio/AudioProcessorChain;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "audioProcessorChain"    # Landroidx/media3/common/audio/AudioProcessorChain;

    .line 349
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    .line 351
    return-object p0
.end method

.method public setAudioProcessors([Landroidx/media3/common/audio/AudioProcessor;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 1
    .param p1, "audioProcessors"    # [Landroidx/media3/common/audio/AudioProcessor;

    .line 335
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setAudioProcessorChain(Landroidx/media3/common/audio/AudioProcessorChain;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAudioTrackBufferSizeProvider(Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "audioTrackBufferSizeProvider"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 391
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 392
    return-object p0
.end method

.method public setAudioTrackProvider(Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "audioTrackProvider"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    .line 431
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    .line 432
    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "enableAudioTrackPlaybackParams"    # Z

    .line 378
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    .line 379
    return-object p0
.end method

.method public setEnableFloatOutput(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "enableFloatOutput"    # Z

    .line 364
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    .line 365
    return-object p0
.end method

.method public setExperimentalAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .param p1, "audioOffloadListener"    # Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 419
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 420
    return-object p0
.end method
