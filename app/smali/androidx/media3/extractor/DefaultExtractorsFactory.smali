.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field private static final MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingAlwaysEnabled:Z

.field private constantBitrateSeekingEnabled:Z

.field private flacFlags:I

.field private fragmentedMp4Flags:I

.field private jpegFlags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private textTrackTranscodingEnabled:Z

.field private tsFlags:I

.field private tsMode:I

.field private tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private tsTimestampSearchBytes:I


# direct methods
.method public static synthetic $r8$lambda$F3_j6dVylL4MI0cE_5Js_FX16M4()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$f2WO-QnNuJkSXUlyLvKOvkcEmrY()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 109
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 136
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 138
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 161
    const v1, 0x1b8a0

    iput v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    .line 162
    new-instance v1, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 163
    iput-boolean v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    .line 164
    return-void
.end method

.method private addExtractorsForFileType(ILjava/util/List;)V
    .locals 9
    .param p1, "fileType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    .line 436
    .local p2, "extractors":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/Extractor;>;"
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 565
    :pswitch_1
    new-instance v0, Landroidx/media3/extractor/avif/AvifExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/avif/AvifExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    goto/16 :goto_9

    .line 559
    :pswitch_2
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    .line 561
    new-instance v0, Landroidx/media3/extractor/heif/HeifExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/heif/HeifExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 556
    :pswitch_3
    new-instance v0, Landroidx/media3/extractor/bmp/BmpExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    goto/16 :goto_9

    .line 553
    :pswitch_4
    new-instance v0, Landroidx/media3/extractor/webp/WebpExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/webp/WebpExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    goto/16 :goto_9

    .line 550
    :pswitch_5
    new-instance v0, Landroidx/media3/extractor/png/PngExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/png/PngExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    goto/16 :goto_9

    .line 544
    :pswitch_6
    new-instance v1, Landroidx/media3/extractor/avi/AviExtractor;

    .line 546
    iget-boolean v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v1, v0, v2}, Landroidx/media3/extractor/avi/AviExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 544
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    goto/16 :goto_9

    .line 538
    :pswitch_7
    sget-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object v0

    .line 539
    .local v0, "midiExtractor":Landroidx/media3/extractor/Extractor;
    if-eqz v0, :cond_b

    .line 540
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 535
    .end local v0    # "midiExtractor":Landroidx/media3/extractor/Extractor;
    :pswitch_8
    new-instance v0, Landroidx/media3/extractor/jpeg/JpegExtractor;

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I

    invoke-direct {v0, v1}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    goto/16 :goto_9

    .line 532
    :pswitch_9
    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    goto/16 :goto_9

    .line 519
    :pswitch_a
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_0

    .line 520
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    .line 522
    :cond_0
    new-instance v1, Landroidx/media3/extractor/ts/TsExtractor;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 525
    iget-boolean v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v6, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v7, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsFlags:I

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v7, v0, v2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    iget v8, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 522
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    goto/16 :goto_9

    .line 516
    :pswitch_b
    new-instance v0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    goto/16 :goto_9

    .line 513
    :pswitch_c
    new-instance v0, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    goto/16 :goto_9

    .line 497
    :pswitch_d
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    .line 501
    iget-boolean v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v4, :cond_1

    .line 502
    move v4, v2

    goto :goto_0

    .line 503
    :cond_1
    const/16 v4, 0x20

    :goto_0
    or-int/2addr v3, v4

    invoke-direct {v0, v1, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 497
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    .line 508
    iget-boolean v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v4, :cond_2

    .line 509
    goto :goto_1

    .line 510
    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 504
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    goto/16 :goto_9

    .line 486
    :pswitch_e
    new-instance v3, Landroidx/media3/extractor/mp3/Mp3Extractor;

    iget v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 489
    iget-boolean v5, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v5, :cond_3

    .line 490
    goto :goto_2

    .line 491
    :cond_3
    move v0, v2

    :goto_2
    or-int/2addr v0, v4

    .line 492
    iget-boolean v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v4, :cond_4

    .line 493
    goto :goto_3

    .line 494
    :cond_4
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 486
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    goto/16 :goto_9

    .line 477
    :pswitch_f
    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    .line 481
    iget-boolean v5, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v5, :cond_5

    .line 482
    move v1, v2

    goto :goto_4

    .line 483
    :cond_5
    nop

    :goto_4
    or-int/2addr v1, v4

    invoke-direct {v0, v3, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 477
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    goto/16 :goto_9

    .line 474
    :pswitch_10
    new-instance v0, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    goto/16 :goto_9

    .line 466
    :pswitch_11
    sget-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object v0

    .line 467
    .local v0, "flacExtractor":Landroidx/media3/extractor/Extractor;
    if-eqz v0, :cond_6

    .line 468
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 470
    :cond_6
    new-instance v1, Landroidx/media3/extractor/flac/FlacExtractor;

    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-direct {v1, v2}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    goto :goto_9

    .line 455
    .end local v0    # "flacExtractor":Landroidx/media3/extractor/Extractor;
    :pswitch_12
    new-instance v3, Landroidx/media3/extractor/amr/AmrExtractor;

    iget v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 458
    iget-boolean v5, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v5, :cond_7

    .line 459
    goto :goto_5

    .line 460
    :cond_7
    move v0, v2

    :goto_5
    or-int/2addr v0, v4

    .line 461
    iget-boolean v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v4, :cond_8

    .line 462
    goto :goto_6

    .line 463
    :cond_8
    move v1, v2

    :goto_6
    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    .line 455
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    goto :goto_9

    .line 444
    :pswitch_13
    new-instance v3, Landroidx/media3/extractor/ts/AdtsExtractor;

    iget v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 447
    iget-boolean v5, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v5, :cond_9

    .line 448
    goto :goto_7

    .line 449
    :cond_9
    move v0, v2

    :goto_7
    or-int/2addr v0, v4

    .line 450
    iget-boolean v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v4, :cond_a

    .line 451
    goto :goto_8

    .line 452
    :cond_a
    move v1, v2

    :goto_8
    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 444
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    goto :goto_9

    .line 441
    :pswitch_14
    new-instance v0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    goto :goto_9

    .line 438
    :pswitch_15
    new-instance v0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    nop

    .line 572
    :cond_b
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 588
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 590
    const-string v1, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 591
    const-string v4, "isAvailable"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 592
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 593
    .local v0, "isFlacNativeLibraryAvailable":Z
    if-eqz v0, :cond_0

    .line 594
    const-string v1, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroidx/media3/extractor/Extractor;

    .line 595
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 596
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 594
    return-object v1

    .line 598
    :cond_0
    return-object v4
.end method

.method private static getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 576
    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/extractor/Extractor;

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 576
    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    monitor-enter p0

    .line 406
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 406
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 412
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    .local v0, "extractors":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/Extractor;>;"
    invoke-static {p2}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v1

    .line 417
    .local v1, "responseHeadersInferredFileType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 418
    invoke-direct {p0, v1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 421
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result v3

    .line 422
    .local v3, "uriInferredFileType":I
    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    .line 424
    invoke-direct {p0, v3, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 427
    :cond_1
    sget-object v2, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    .line 428
    .local v6, "fileType":I
    if-eq v6, v1, :cond_2

    if-eq v6, v3, :cond_2

    .line 429
    invoke-direct {p0, v6, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 427
    .end local v6    # "fileType":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 432
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 411
    .end local v0    # "extractors":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/Extractor;>;"
    .end local v1    # "responseHeadersInferredFileType":I
    .end local v3    # "uriInferredFileType":I
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "textTrackTranscodingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-object p0

    .line 377
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "textTrackTranscodingEnabled":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 219
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-object p0

    .line 218
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 232
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->amrFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-object p0

    .line 231
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingAlwaysEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "constantBitrateSeekingAlwaysEnabled"    # Z

    monitor-enter p0

    .line 205
    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-object p0

    .line 204
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "constantBitrateSeekingAlwaysEnabled":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "constantBitrateSeekingEnabled"    # Z

    monitor-enter p0

    .line 180
    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-object p0

    .line 179
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "constantBitrateSeekingEnabled":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setFlacExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 248
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-object p0

    .line 247
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 289
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-object p0

    .line 288
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setJpegExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 400
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-object p0

    .line 399
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 262
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-object p0

    .line 261
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 302
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-object p0

    .line 301
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 275
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-object p0

    .line 274
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    monitor-enter p0

    .line 386
    :try_start_0
    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-object p0

    .line 385
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 1
    .param p1, "textTrackTranscodingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 371
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "textTrackTranscodingEnabled":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 330
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-object p0

    .line 329
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "mode"    # I

    monitor-enter p0

    .line 315
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-object p0

    .line 314
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTsExtractorTimestampSearchBytes(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "timestampSearchBytes"    # I

    monitor-enter p0

    .line 359
    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-object p0

    .line 358
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "timestampSearchBytes":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTsSubtitleFormats(Ljava/util/List;)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)",
            "Landroidx/media3/extractor/DefaultExtractorsFactory;"
        }
    .end annotation

    .local p1, "subtitleFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    monitor-enter p0

    .line 344
    :try_start_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-object p0

    .line 343
    .end local p0    # "this":Landroidx/media3/extractor/DefaultExtractorsFactory;
    .end local p1    # "subtitleFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
