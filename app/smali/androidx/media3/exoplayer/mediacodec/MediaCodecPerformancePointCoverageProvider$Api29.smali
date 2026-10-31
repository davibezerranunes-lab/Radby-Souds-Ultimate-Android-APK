.class final Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;
.super Ljava/lang/Object;
.source "MediaCodecPerformancePointCoverageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 5
    .param p0, "videoCapabilities"    # Landroid/media/MediaCodecInfo$VideoCapabilities;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 100
    nop

    .line 101
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "performancePointList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    double-to-int v3, p3

    invoke-direct {v2, p1, p2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 113
    .local v2, "targetPerformancePoint":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    nop

    .line 114
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluatePerformancePointCoverage(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I

    move-result v3

    .line 116
    .local v3, "performancePointCoverageResult":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 117
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 121
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->shouldIgnorePerformancePoints()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 122
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    return v1

    .line 127
    :cond_1
    return v3

    .line 103
    .end local v2    # "targetPerformancePoint":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .end local v3    # "performancePointCoverageResult":I
    :cond_2
    :goto_0
    return v1
.end method

.method private static evaluateH264RequiredSupport(Z)I
    .locals 9
    .param p0, "requiresSecureDecoder"    # Z

    .line 158
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string/jumbo v2, "video/avc"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 160
    .local v1, "formatH264":Landroidx/media3/common/Format;
    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 161
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 162
    invoke-static {v2, v1, p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 168
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v4, :cond_0

    .line 169
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 170
    nop

    .line 172
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 174
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    move-result-object v4

    .line 176
    .local v4, "performancePointListH264":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    new-instance v5, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v6, 0x2d0

    const/16 v7, 0x3c

    const/16 v8, 0x500

    invoke-direct {v5, v8, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 179
    .local v5, "targetPerformancePointH264":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-static {v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluatePerformancePointCoverage(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I

    move-result v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 167
    .end local v4    # "performancePointListH264":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    .end local v5    # "targetPerformancePointH264":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "i":I
    :cond_1
    return v0

    .line 186
    .end local v1    # "formatH264":Landroidx/media3/common/Format;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ignored":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    return v0
.end method

.method private static evaluatePerformancePointCoverage(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .locals 2
    .param p1, "targetPerformancePoint"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ")I"
        }
    .end annotation

    .line 193
    .local p0, "performancePointList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x2

    return v1

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static shouldIgnorePerformancePoints()Z
    .locals 5

    .line 134
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 136
    return v2

    .line 139
    :cond_0
    nop

    .line 140
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluateH264RequiredSupport(Z)I

    move-result v0

    .line 142
    .local v0, "h264RequiredSupportResult":I
    nop

    .line 143
    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluateH264RequiredSupport(Z)I

    move-result v3

    .line 145
    .local v3, "h264SecureRequiredSupportResult":I
    if-nez v0, :cond_1

    .line 146
    return v1

    .line 148
    :cond_1
    const/4 v4, 0x2

    if-nez v3, :cond_3

    .line 149
    if-eq v0, v4, :cond_2

    move v2, v1

    :cond_2
    return v2

    .line 151
    :cond_3
    if-ne v0, v4, :cond_4

    if-eq v3, v4, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    return v2
.end method
