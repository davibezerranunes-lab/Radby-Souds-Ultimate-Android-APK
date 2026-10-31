.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private built:Z

.field private clock:Landroidx/media3/common/util/Clock;

.field private compositionEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

.field private videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoFrameReleaseControl"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->context:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 133
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositionEffects:Ljava/util/List;

    .line 134
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 135
    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroidx/media3/common/util/Clock;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroidx/media3/common/PreviewingVideoGraph$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositionEffects:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .locals 4

    .line 203
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->built:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 205
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 209
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    .line 212
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {v0, p0, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V

    .line 213
    .local v0, "playbackVideoGraphWrapper":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->built:Z

    .line 214
    return-object v0
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
    .locals 0
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 192
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 193
    return-object p0
.end method

.method public setCompositionEffects(Ljava/util/List;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)",
            "Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;"
        }
    .end annotation

    .line 178
    .local p1, "compositionEffects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositionEffects:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public setPreviewingVideoGraphFactory(Landroidx/media3/common/PreviewingVideoGraph$Factory;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
    .locals 0
    .param p1, "previewingVideoGraphFactory"    # Landroidx/media3/common/PreviewingVideoGraph$Factory;

    .line 166
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    .line 167
    return-object p0
.end method

.method public setVideoFrameProcessorFactory(Landroidx/media3/common/VideoFrameProcessor$Factory;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
    .locals 0
    .param p1, "videoFrameProcessorFactory"    # Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 150
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 151
    return-object p0
.end method
