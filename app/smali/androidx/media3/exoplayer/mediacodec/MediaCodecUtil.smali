.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    .line 73
    const/4 v0, -0x1

    sput v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 555
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 556
    const-string v3, "R9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 558
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v3, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    nop

    .line 562
    const-string v3, "OMX.google.raw.decoder"

    const-string v4, "audio/raw"

    const-string v5, "audio/raw"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 561
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 591
    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 592
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 595
    .local v0, "firstCodecName":Ljava/lang/String;
    const-string v1, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 1
    .param p0, "avcLevel"    # I

    .line 687
    sparse-switch p0, :sswitch_data_0

    .line 719
    const/4 v0, -0x1

    return v0

    .line 717
    :sswitch_0
    const/high16 v0, 0x2200000

    return v0

    .line 713
    :sswitch_1
    const/high16 v0, 0x900000

    return v0

    .line 710
    :sswitch_2
    const v0, 0x564000

    return v0

    .line 708
    :sswitch_3
    const/high16 v0, 0x220000

    return v0

    .line 706
    :sswitch_4
    const/high16 v0, 0x200000

    return v0

    .line 703
    :sswitch_5
    const/high16 v0, 0x140000

    return v0

    .line 701
    :sswitch_6
    const v0, 0xe1000

    return v0

    .line 699
    :sswitch_7
    const v0, 0x65400

    return v0

    .line 696
    :sswitch_8
    const v0, 0x31800

    return v0

    .line 694
    :sswitch_9
    const v0, 0x18c00

    return v0

    .line 690
    :sswitch_a
    const/16 v0, 0x6300

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized clearDecoderInfoCache()V
    .locals 2

    const-class v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 323
    const-string v0, "audio/eac3-joc"

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "audio/eac3"

    return-object v0

    .line 327
    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "video/hevc"

    if-eqz v0, :cond_4

    .line 332
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    .line 333
    .local v0, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_4

    .line 334
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 335
    .local v2, "profile":I
    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 338
    :cond_1
    const/16 v3, 0x200

    if-ne v2, v3, :cond_2

    .line 339
    const-string/jumbo v1, "video/avc"

    return-object v1

    .line 340
    :cond_2
    const/16 v3, 0x400

    if-ne v2, v3, :cond_4

    .line 341
    const-string/jumbo v1, "video/av01"

    return-object v1

    .line 337
    :cond_3
    :goto_0
    return-object v1

    .line 345
    .end local v0    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "profile":I
    :cond_4
    const-string/jumbo v0, "video/mv-hevc"

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    return-object v1

    .line 349
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 238
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "alternativeMimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 242
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 473
    .local v3, "supportedType":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    return-object v3

    .line 472
    .end local v3    # "supportedType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_1
    const-string/jumbo v1, "video/dolby-vision"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    const-string v1, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    const-string/jumbo v1, "video/hevcdv"

    return-object v1

    .line 483
    :cond_2
    const-string v1, "OMX.RTK.video.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 484
    const-string v1, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 485
    :cond_3
    const-string/jumbo v1, "video/dv_hevc"

    return-object v1

    .line 487
    :cond_4
    const-string/jumbo v1, "video/mv-hevc"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 489
    const-string v1, "c2.qti.mvhevc.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 490
    const-string/jumbo v1, "video/x-mvhevc"

    return-object v1

    .line 492
    :cond_5
    const-string v1, "audio/alac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "OMX.lge.alac.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 493
    const-string v1, "audio/x-lg-alac"

    return-object v1

    .line 494
    :cond_6
    const-string v1, "audio/flac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.lge.flac.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 495
    const-string v1, "audio/x-lg-flac"

    return-object v1

    .line 496
    :cond_7
    const-string v1, "audio/ac3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "OMX.lge.ac3.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 497
    const-string v1, "audio/lg-ac3"

    return-object v1

    .line 500
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 1
    .param p0, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-static {p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 129
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 148
    :try_start_0
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 149
    .local v1, "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .local v2, "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    if-eqz v2, :cond_0

    .line 151
    monitor-exit v0

    return-object v2

    .line 153
    :cond_0
    :try_start_1
    new-instance v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v3, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    .line 154
    .local v3, "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object v4

    .line 155
    .local v4, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_1

    .line 158
    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    move-object v3, v5

    .line 159
    invoke-static {v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v4, v5

    .line 160
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    const-string v5, "MediaCodecUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Assuming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 166
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-static {v5, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    invoke-static {p0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 170
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 171
    .local v5, "immutableDecoderInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    sget-object v6, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit v0

    return-object v5

    .line 147
    .end local v1    # "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .end local v2    # "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .end local v4    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v5    # "immutableDecoderInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local p0    # "mimeType":Ljava/lang/String;
    .end local p1    # "secure":Z
    .end local p2    # "tunneling":Z
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .locals 31
    .param p0, "key"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 366
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "secure-playback"

    const-string/jumbo v4, "tunneled-playback"

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 367
    .local v5, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    move-object v15, v0

    .line 368
    .local v15, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v0

    move v14, v0

    .line 369
    .local v14, "numberOfCodecs":I
    invoke-interface/range {p1 .. p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v0

    move v13, v0

    .line 371
    .local v13, "secureDecodersExplicit":Z
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_e

    .line 372
    invoke-interface {v2, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    move-object v8, v0

    .line 373
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isAlias(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_4

    .line 378
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 379
    .local v7, "name":Ljava/lang/String;
    invoke-static {v8, v7, v13, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_4

    .line 382
    :cond_1
    invoke-static {v8, v7, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v6, v0

    .line 383
    .local v6, "codecMimeType":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 384
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_4

    .line 387
    :cond_2
    :try_start_1
    invoke-virtual {v8, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 388
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    nop

    .line 389
    invoke-interface {v2, v4, v6, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move/from16 v22, v10

    .line 391
    .local v22, "tunnelingSupported":Z
    nop

    .line 392
    invoke-interface {v2, v4, v6, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move/from16 v23, v10

    .line 394
    .local v23, "tunnelingRequired":Z
    iget-boolean v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v10, :cond_3

    if-nez v23, :cond_4

    :cond_3
    iget-boolean v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v10, :cond_5

    if-nez v22, :cond_5

    .line 395
    :cond_4
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_4

    .line 397
    :cond_5
    nop

    .line 398
    invoke-interface {v2, v3, v6, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move v12, v10

    .line 400
    .local v12, "secureSupported":Z
    nop

    .line 401
    invoke-interface {v2, v3, v6, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move/from16 v24, v10

    .line 403
    .local v24, "secureRequired":Z
    iget-boolean v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v10, :cond_6

    if-nez v24, :cond_7

    :cond_6
    iget-boolean v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v10, :cond_8

    if-nez v12, :cond_8

    .line 404
    :cond_7
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_4

    .line 406
    :cond_8
    invoke-static {v8, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v10

    .line 407
    .local v10, "hardwareAccelerated":Z
    invoke-static {v8, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v11

    .line 408
    .local v11, "softwareOnly":Z
    invoke-static {v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v17, v14

    move v14, v12

    .end local v12    # "secureSupported":Z
    .local v14, "secureSupported":Z
    .local v17, "numberOfCodecs":I
    move/from16 v12, v16

    .line 409
    .local v12, "vendor":Z
    if-eqz v13, :cond_9

    :try_start_2
    iget-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v2, v14, :cond_a

    goto :goto_1

    .line 437
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v14    # "secureSupported":Z
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    :catch_0
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move-object v6, v15

    move/from16 v2, v17

    goto/16 :goto_3

    .line 409
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v14    # "secureSupported":Z
    .restart local v22    # "tunnelingSupported":Z
    .restart local v23    # "tunnelingRequired":Z
    .restart local v24    # "secureRequired":Z
    :cond_9
    :goto_1
    if-nez v13, :cond_b

    :try_start_3
    iget-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v2, :cond_b

    .line 411
    :cond_a
    nop

    .line 412
    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v6

    .end local v6    # "codecMimeType":Ljava/lang/String;
    .local v25, "codecMimeType":Ljava/lang/String;
    move-object v6, v7

    move-object/from16 v26, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    move-object v7, v15

    move-object/from16 v27, v8

    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .local v27, "codecInfo":Landroid/media/MediaCodecInfo;
    move-object/from16 v8, v25

    move/from16 v28, v9

    .end local v9    # "i":I
    .local v28, "i":I
    move-object v9, v0

    move/from16 v29, v13

    .end local v13    # "secureDecodersExplicit":Z
    .local v29, "secureDecodersExplicit":Z
    move v13, v2

    move/from16 v30, v14

    move/from16 v2, v17

    .end local v14    # "secureSupported":Z
    .end local v17    # "numberOfCodecs":I
    .local v2, "numberOfCodecs":I
    .local v30, "secureSupported":Z
    move/from16 v14, v16

    :try_start_4
    invoke-static/range {v6 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v6

    .line 411
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v15

    move-object/from16 v7, v26

    goto/16 :goto_2

    .line 437
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    .end local v30    # "secureSupported":Z
    :catch_1
    move-exception v0

    move-object v6, v15

    move-object/from16 v7, v26

    goto/16 :goto_3

    .end local v2    # "numberOfCodecs":I
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .restart local v6    # "codecMimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v17    # "numberOfCodecs":I
    :catch_2
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v2, v17

    move-object v6, v15

    .end local v6    # "codecMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v17    # "numberOfCodecs":I
    .restart local v2    # "numberOfCodecs":I
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    .restart local v29    # "secureDecodersExplicit":Z
    goto/16 :goto_3

    .line 409
    .end local v2    # "numberOfCodecs":I
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v6    # "codecMimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v14    # "secureSupported":Z
    .restart local v17    # "numberOfCodecs":I
    .restart local v22    # "tunnelingSupported":Z
    .restart local v23    # "tunnelingRequired":Z
    .restart local v24    # "secureRequired":Z
    :cond_b
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v2, v17

    .line 422
    .end local v6    # "codecMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "secureSupported":Z
    .end local v17    # "numberOfCodecs":I
    .restart local v2    # "numberOfCodecs":I
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    .restart local v29    # "secureDecodersExplicit":Z
    .restart local v30    # "secureSupported":Z
    if-nez v29, :cond_c

    if-eqz v30, :cond_c

    .line 423
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v7, v26

    .end local v26    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".secure"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 424
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v14, v15

    move-object v6, v15

    .end local v15    # "mimeType":Ljava/lang/String;
    .local v6, "mimeType":Ljava/lang/String;
    move-object/from16 v15, v25

    move-object/from16 v16, v0

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    :try_start_7
    invoke-static/range {v13 .. v21}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v8

    .line 423
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 435
    return-object v5

    .line 437
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    .end local v30    # "secureSupported":Z
    :catch_3
    move-exception v0

    goto :goto_3

    .end local v6    # "mimeType":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v6, v15

    .end local v15    # "mimeType":Ljava/lang/String;
    .restart local v6    # "mimeType":Ljava/lang/String;
    goto :goto_3

    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v6, v15

    move-object/from16 v7, v26

    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    goto :goto_3

    .line 422
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v22    # "tunnelingSupported":Z
    .restart local v23    # "tunnelingRequired":Z
    .restart local v24    # "secureRequired":Z
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v30    # "secureSupported":Z
    :cond_c
    move-object v6, v15

    move-object/from16 v7, v26

    .line 447
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    .end local v26    # "name":Ljava/lang/String;
    .end local v30    # "secureSupported":Z
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 437
    .end local v2    # "numberOfCodecs":I
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .local v6, "codecMimeType":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v13    # "secureDecodersExplicit":Z
    .local v14, "numberOfCodecs":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    .line 438
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "numberOfCodecs":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "numberOfCodecs":I
    .local v6, "mimeType":Ljava/lang/String;
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    .restart local v29    # "secureDecodersExplicit":Z
    :goto_3
    :try_start_8
    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/16 v9, 0x17

    const-string v10, "MediaCodecUtil"

    if-gt v8, v9, :cond_d

    :try_start_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping codec "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (failed to query capabilities)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "name":Ljava/lang/String;
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    :goto_4
    add-int/lit8 v9, v28, 0x1

    move v14, v2

    move-object v15, v6

    move/from16 v13, v29

    move-object/from16 v2, p1

    .end local v28    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_0

    .line 444
    .end local v9    # "i":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v25

    .end local v25    # "codecMimeType":Ljava/lang/String;
    .local v4, "codecMimeType":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    nop

    .end local p0    # "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .end local p1    # "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "numberOfCodecs":I
    .end local v4    # "codecMimeType":Ljava/lang/String;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v14    # "numberOfCodecs":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local p0    # "key":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
    .restart local p1    # "mediaCodecList":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    :cond_e
    return-object v5

    .line 450
    .end local v5    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "numberOfCodecs":I
    .end local v15    # "mimeType":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 453
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    throw v2
.end method

.method public static getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 3
    .param p0, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.sampleMimeType"
        }
    .end annotation

    .line 202
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 203
    invoke-interface {p0, v0, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    nop

    .line 206
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 208
    return-object v2
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 253
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 254
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/Format;)V

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 256
    return-object p0
.end method

.method public static getDecryptOnlyDecoderInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 112
    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getHevcBaseLayerCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 3
    .param p0, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "codecs":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    return-object v1

    .line 308
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "parts":[Ljava/lang/String;
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static isAlias(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 602
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isAliasV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAliasV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 607
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v0

    return v0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 517
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    const-string v0, ".secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 522
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_3

    .line 523
    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 524
    const-string/jumbo v2, "samsung"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 525
    const-string/jumbo v2, "zeroflte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 526
    const-string/jumbo v2, "zerolte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 527
    const-string/jumbo v2, "zenlte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 528
    const-string v2, "SC-05G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 529
    const-string v2, "marinelteatt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 530
    const-string v2, "404SC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 531
    const-string v2, "SC-04G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 532
    const-string v2, "SCV31"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    :cond_2
    return v1

    .line 537
    :cond_3
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v0, v2, :cond_4

    .line 538
    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    const-string v0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    return v1

    .line 543
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_5
    :goto_0
    return v1
.end method

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 616
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 617
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 621
    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 626
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 4
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 634
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 635
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 637
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 639
    return v1

    .line 641
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "codecName":Ljava/lang/String;
    const-string v2, "arc."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 644
    return v3

    .line 646
    :cond_2
    const-string v2, "omx.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 647
    const-string v2, "omx.ffmpeg."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 648
    const-string v2, "omx.sec."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ".sw."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 649
    :cond_3
    const-string v2, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 650
    const-string v2, "c2.android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 651
    const-string v2, "c2.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 652
    const-string v2, "omx."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "c2."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    :goto_0
    nop

    .line 646
    :goto_1
    return v1
.end method

.method private static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 657
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v0

    return v0
.end method

.method private static isVendor(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 665
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 666
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 668
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "codecName":Ljava/lang/String;
    const-string v1, "omx.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    const-string v1, "c2.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    const-string v1, "c2.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 669
    :goto_0
    return v1
.end method

.method private static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .locals 1
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 676
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$applyWorkarounds$1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 3
    .param p0, "decoderInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 577
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 578
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    const/4 v1, -0x1

    return v1

    .line 587
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 580
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$getDecoderInfosSortedByFormatSupport$0(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 1
    .param p0, "format"    # Landroidx/media3/common/Format;
    .param p1, "decoderInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 255
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatFunctionallySupported(Landroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sortByScore$2(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "scoreProvider"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 725
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 265
    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "result":I
    nop

    .line 269
    const-string/jumbo v1, "video/avc"

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 270
    .local v1, "decoderInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 272
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 271
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    const v2, 0x54600

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 277
    :cond_1
    sput v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 279
    .end local v0    # "result":I
    .end local v1    # "decoderInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    :cond_2
    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 725
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "scoreProvider":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;, "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<TT;>;"
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 726
    return-void
.end method

.method public static warmDecoderInfoCache(Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z

    .line 91
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    const-string v1, "MediaCodecUtil"

    const-string v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    :goto_0
    return-void
.end method
