.class public final Landroidx/media3/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/amr/AmrExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD:I = 0x14

.field private static final SAMPLE_RATE_NB:I = 0x1f40

.field private static final SAMPLE_RATE_WB:I = 0x3e80

.field private static final SAMPLE_TIME_PER_FRAME_US:I = 0x4e20

.field private static final amrSignatureNb:[B

.field private static final amrSignatureWb:[B

.field private static final frameSizeBytesByTypeNb:[I

.field private static final frameSizeBytesByTypeWb:[I


# instance fields
.field private currentSampleBytesRemaining:I

.field private currentSampleSize:I

.field private currentSampleTimeUs:J

.field private currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private firstSampleSize:I

.field private final flags:I

.field private hasOutputFormat:Z

.field private isSeekInProgress:Z

.field private isWideBand:Z

.field private numSamplesWithSameSize:I

.field private realTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private final scratch:[B

.field private seekMap:Landroidx/media3/extractor/SeekMap;

.field private seekTimeUs:J

.field private final skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private timeOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Landroidx/media3/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    .line 122
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    .line 145
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    .line 164
    const-string v0, "#!AMR\n"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 165
    const-string v0, "#!AMR-WB\n"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    .line 200
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 207
    or-int/lit8 p1, p1, 0x1

    .line 209
    :cond_0
    iput p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->flags:I

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 212
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 213
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 214
    return-void
.end method

.method static amrSignatureNb()[B
    .locals 2

    .line 285
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    sget-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static amrSignatureWb()[B
    .locals 2

    .line 289
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    sget-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method static frameSizeBytesByTypeNb(I)I
    .locals 1
    .param p0, "frameType"    # I

    .line 277
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget v0, v0, p0

    return v0
.end method

.method static frameSizeBytesByTypeWb(I)I
    .locals 1
    .param p0, "frameType"    # I

    .line 281
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget v0, v0, p0

    return v0
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .locals 4
    .param p0, "frameSize"    # I
    .param p1, "durationUsPerFrame"    # J

    .line 494
    int-to-long v0, p0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getConstantBitrateSeekMap(JZ)Landroidx/media3/extractor/SeekMap;
    .locals 11
    .param p1, "inputLength"    # J
    .param p3, "allowSeeksIfLengthUnknown"    # Z

    .line 464
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/amr/AmrExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v0

    .line 465
    .local v0, "bitrate":I
    new-instance v1, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v9, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    move-object v3, v1

    move-wide v4, p1

    move v8, v0

    move v10, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v1
.end method

.method private getFrameSizeInBytes(I)I
    .locals 2
    .param p1, "frameType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->isValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal AMR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_0

    const-string v1, "WB"

    goto :goto_0

    :cond_0
    const-string v1, "NB"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 417
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget v0, v0, p1

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget v0, v0, p1

    :goto_1
    return v0
.end method

.method private isNarrowBandValidFrameType(I)Z
    .locals 1
    .param p1, "frameType"    # I

    .line 433
    iget-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSeekTimeUsWithinRange(JJ)Z
    .locals 4
    .param p1, "timeUs"    # J
    .param p3, "seekTimeUs"    # J

    .line 483
    sub-long v0, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidFrameType(I)Z
    .locals 1
    .param p1, "frameType"    # I

    .line 421
    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 423
    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBandValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->isNarrowBandValidFrameType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0
.end method

.method private isWideBandValidFrameType(I)Z
    .locals 1
    .param p1, "frameType"    # I

    .line 428
    iget-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/amr/AmrExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputFormat()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput"
        }
    .end annotation

    .line 324
    iget-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    if-nez v0, :cond_3

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    .line 326
    iget-boolean v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_0

    const-string v1, "audio/amr-wb"

    goto :goto_0

    :cond_0
    const-string v1, "audio/3gpp"

    .line 327
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x3e80

    goto :goto_1

    :cond_1
    const/16 v2, 0x1f40

    .line 329
    .local v2, "sampleRate":I
    :goto_1
    iget-boolean v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    goto :goto_2

    :cond_2
    sget-object v3, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    .line 330
    .local v3, "maxInputSize":I
    :goto_2
    iget-object v4, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 332
    invoke-virtual {v5, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 333
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 334
    invoke-virtual {v5, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 330
    invoke-interface {v4, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 338
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "sampleRate":I
    .end local v3    # "maxInputSize":I
    :cond_3
    return-void
.end method

.method private maybeOutputSeekMap(JI)V
    .locals 8
    .param p1, "inputLength"    # J
    .param p3, "sampleReadResult"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v0, :cond_0

    .line 439
    return-void

    .line 442
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v0, v0, 0x4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 443
    new-instance v0, Landroidx/media3/extractor/IndexSeekMap;

    iget-wide v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    new-array v7, v4, [J

    aput-wide v5, v7, v3

    new-array v4, v4, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    invoke-direct {v0, v7, v4, v1, v2}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    goto :goto_1

    .line 448
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v0, v6, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    if-ne p3, v5, :cond_6

    .line 453
    :cond_3
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v3, v4

    .line 454
    :cond_4
    invoke-direct {p0, p1, p2, v3}, Landroidx/media3/extractor/amr/AmrExtractor;->getConstantBitrateSeekMap(JZ)Landroidx/media3/extractor/SeekMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    goto :goto_1

    .line 450
    :cond_5
    :goto_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    .line 458
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v0, :cond_7

    .line 459
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 461
    :cond_7
    return-void
.end method

.method private static peekAmrSignature(Landroidx/media3/extractor/ExtractorInput;[B)Z
    .locals 3
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "amrSignature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 317
    array-length v0, p1

    new-array v0, v0, [B

    .line 318
    .local v0, "header":[B
    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {p0, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 319
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private peekNextSampleSize(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 3
    .param p1, "extractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 396
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 398
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    aget-byte v0, v0, v2

    .line 399
    .local v0, "frameHeader":B
    and-int/lit16 v1, v0, 0x83

    if-gtz v1, :cond_0

    .line 406
    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0xf

    .line 407
    .local v1, "frameType":I
    invoke-direct {p0, v1}, Landroidx/media3/extractor/amr/AmrExtractor;->getFrameSizeInBytes(I)I

    move-result v2

    return v2

    .line 402
    .end local v1    # "frameType":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid padding bits for frame header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method private readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    invoke-static {p1, v0}, Landroidx/media3/extractor/amr/AmrExtractor;->peekAmrSignature(Landroidx/media3/extractor/ExtractorInput;[B)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 302
    iput-boolean v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 303
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 304
    return v2

    .line 305
    :cond_0
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    invoke-static {p1, v0}, Landroidx/media3/extractor/amr/AmrExtractor;->peekAmrSignature(Landroidx/media3/extractor/ExtractorInput;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iput-boolean v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 307
    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 308
    return v2

    .line 310
    :cond_1
    return v1
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 12
    .param p1, "extractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput"
        }
    .end annotation

    .line 342
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v0, :cond_3

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->peekNextSampleSize(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    nop

    .line 348
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 349
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v0, v5, :cond_0

    .line 350
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    .line 351
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 353
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v0, v6, :cond_1

    .line 354
    iget v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    .line 356
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v0, v0, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    check-cast v0, Landroidx/media3/extractor/IndexSeekMap;

    .line 360
    .local v0, "indexSeekMap":Landroidx/media3/extractor/IndexSeekMap;
    iget-wide v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v8, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    .line 361
    .local v6, "nextSampleTimeUs":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 362
    .local v8, "nextSamplePosition":J
    const-wide/32 v10, 0x186a0

    invoke-virtual {v0, v6, v7, v10, v11}, Landroidx/media3/extractor/IndexSeekMap;->isTimeUsInIndex(JJ)Z

    move-result v10

    if-nez v10, :cond_2

    .line 364
    invoke-virtual {v0, v6, v7, v8, v9}, Landroidx/media3/extractor/IndexSeekMap;->addSeekPoint(JJ)V

    .line 366
    :cond_2
    iget-boolean v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    if-eqz v10, :cond_3

    iget-wide v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    invoke-direct {p0, v6, v7, v10, v11}, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekTimeUsWithinRange(JJ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 367
    iput-boolean v4, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    .line 368
    iget-object v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_0

    .line 345
    .end local v0    # "indexSeekMap":Landroidx/media3/extractor/IndexSeekMap;
    .end local v6    # "nextSampleTimeUs":J
    .end local v8    # "nextSamplePosition":J
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/EOFException;
    return v5

    .line 373
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 374
    invoke-interface {v0, p1, v6, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    .line 376
    .local v0, "bytesAppended":I
    if-ne v0, v5, :cond_4

    .line 377
    return v5

    .line 379
    :cond_4
    iget v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 380
    iget v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    if-lez v3, :cond_5

    .line 381
    return v4

    .line 384
    :cond_5
    iget-object v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v8, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v6, v8

    iget v9, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 390
    iget-wide v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    .line 391
    return v4
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 225
    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 227
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 228
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 229
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Landroidx/media3/extractor/amr/AmrExtractor;->assertInitialized()V

    .line 234
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    const-string v0, "Could not find AMR header."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 240
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/media3/extractor/amr/AmrExtractor;->maybeOutputFormat()V

    .line 241
    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    .line 242
    .local v0, "sampleReadResult":I
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/extractor/amr/AmrExtractor;->maybeOutputSeekMap(JI)V

    .line 243
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v1, v1, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v1, :cond_2

    .line 245
    iget-wide v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v1, v3

    .line 246
    .local v1, "durationUs":J
    iget-object v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    check-cast v3, Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/IndexSeekMap;->setDurationUs(J)V

    .line 247
    iget-object v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 249
    .end local v1    # "durationUs":J
    :cond_2
    return v0
.end method

.method public release()V
    .locals 0

    .line 274
    return-void
.end method

.method public seek(JJ)V
    .locals 4
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    .line 255
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    .line 256
    iput v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 257
    iput-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    .line 258
    iget-object v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v2, v2, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v2, :cond_0

    .line 259
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    check-cast v0, Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/IndexSeekMap;->getTimeUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    .line 260
    iget-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekTimeUsWithinRange(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    .line 262
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_0

    .line 264
    :cond_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v2, v2, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    if-eqz v2, :cond_1

    .line 265
    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    check-cast v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    goto :goto_0

    .line 267
    :cond_1
    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    .line 269
    :cond_2
    :goto_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
