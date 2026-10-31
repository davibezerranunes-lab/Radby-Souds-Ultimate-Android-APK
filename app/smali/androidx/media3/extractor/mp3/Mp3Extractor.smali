.class public final Landroidx/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x8

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final MAX_SNIFF_BYTES:I = 0x8000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67

.field private static final TAG:Ljava/lang/String; = "Mp3Extractor"


# instance fields
.field private basisTimeUs:J

.field private currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private disableSeeking:Z

.field private endPositionOfLastSampleRead:J

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

.field private final id3Peeker:Landroidx/media3/extractor/Id3Peeker;

.field private isSeekInProgress:Z

.field private metadata:Landroidx/media3/common/Metadata;

.field private realTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seekTimeUs:J

.field private seeker:Landroidx/media3/extractor/mp3/Seeker;

.field private final skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private final synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field private synchronizedHeaderData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    .line 132
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 190
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 196
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 197
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "forcedFirstSampleTimestampUs"    # J

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 206
    or-int/lit8 p1, p1, 0x1

    .line 208
    :cond_0
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    .line 209
    iput-wide p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 210
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 211
    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 212
    new-instance v0, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 213
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 214
    new-instance v0, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {v0}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media3/extractor/Id3Peeker;

    .line 215
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 216
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 218
    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-void
.end method

.method private computeSeeker(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;
    .locals 16
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v1

    .line 472
    .local v1, "seekFrameSeeker":Landroidx/media3/extractor/mp3/Seeker;
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Landroidx/media3/common/Metadata;J)Landroidx/media3/extractor/mp3/MlltSeeker;

    move-result-object v2

    .line 474
    .local v2, "metadataSeeker":Landroidx/media3/extractor/mp3/Seeker;
    iget-boolean v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v3, :cond_0

    .line 475
    new-instance v3, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {v3}, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object v3

    .line 478
    :cond_0
    const/4 v3, 0x0

    .line 479
    .local v3, "resultSeeker":Landroidx/media3/extractor/mp3/Seeker;
    iget v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 481
    const-wide/16 v4, -0x1

    .line 482
    .local v4, "dataEndPosition":J
    if-eqz v2, :cond_1

    .line 483
    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v6

    .line 484
    .local v6, "durationUs":J
    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v4

    goto :goto_0

    .line 485
    .end local v6    # "durationUs":J
    :cond_1
    if-eqz v1, :cond_2

    .line 486
    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v6

    .line 487
    .restart local v6    # "durationUs":J
    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v4

    goto :goto_0

    .line 489
    .end local v6    # "durationUs":J
    :cond_2
    iget-object v6, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v6}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v6

    .line 491
    .restart local v6    # "durationUs":J
    :goto_0
    new-instance v15, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 493
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    move-object v8, v15

    move-wide v9, v6

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Landroidx/media3/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    move-object v3, v15

    .line 494
    .end local v4    # "dataEndPosition":J
    .end local v6    # "durationUs":J
    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 495
    move-object v3, v2

    goto :goto_1

    .line 496
    :cond_4
    if-eqz v1, :cond_5

    .line 497
    move-object v3, v1

    .line 500
    :cond_5
    :goto_1
    const/4 v4, 0x1

    if-eqz v3, :cond_7

    .line 501
    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_6

    goto :goto_2

    .line 507
    :cond_6
    move-object/from16 v5, p1

    goto :goto_4

    .line 502
    :cond_7
    :goto_2
    iget v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 503
    :goto_3
    move-object/from16 v5, p1

    invoke-direct {v0, v5, v4}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v3

    .line 507
    :goto_4
    return-object v3
.end method

.method private computeTimeUs(J)J
    .locals 6
    .param p1, "samplesRead"    # J

    .line 370
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getConstantBitrateSeeker(JLandroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/Seeker;
    .locals 20
    .param p1, "infoFramePosition"    # J
    .param p3, "infoFrame"    # Landroidx/media3/extractor/mp3/XingFrame;
    .param p4, "fallbackStreamLength"    # J

    .line 600
    move-object/from16 v0, p3

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/extractor/mp3/XingFrame;->computeDurationUs()J

    move-result-wide v8

    .line 601
    .local v8, "durationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 602
    return-object v2

    .line 609
    :cond_0
    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 610
    iget-wide v1, v0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long v1, p1, v1

    .line 611
    .local v1, "streamLength":J
    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    iget-object v5, v0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v5, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    move-wide/from16 v18, v1

    move-wide v13, v3

    .local v3, "audioLength":J
    goto :goto_0

    .line 612
    .end local v1    # "streamLength":J
    .end local v3    # "audioLength":J
    :cond_1
    cmp-long v1, p4, v5

    if-eqz v1, :cond_2

    .line 613
    move-wide/from16 v1, p4

    .line 614
    .restart local v1    # "streamLength":J
    sub-long v3, p4, p1

    iget-object v5, v0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v5, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    move-wide/from16 v18, v1

    move-wide v13, v3

    .line 623
    .end local v1    # "streamLength":J
    .local v13, "audioLength":J
    .local v18, "streamLength":J
    :goto_0
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 625
    const-wide/32 v3, 0x7a1200

    move-wide v1, v13

    move-wide v5, v8

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 624
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    .line 630
    .local v1, "averageBitrate":I
    iget-wide v2, v0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 631
    invoke-static {v13, v14, v2, v3, v4}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    .line 635
    .local v2, "frameSize":I
    new-instance v3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-object v4, v0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v4, v4

    add-long v4, p1, v4

    const/16 v17, 0x0

    move-object v10, v3

    move-wide/from16 v11, v18

    move-wide v6, v13

    .end local v13    # "audioLength":J
    .local v6, "audioLength":J
    move-wide v13, v4

    move v15, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    return-object v3

    .line 616
    .end local v1    # "averageBitrate":I
    .end local v2    # "frameSize":I
    .end local v6    # "audioLength":J
    .end local v18    # "streamLength":J
    :cond_2
    return-object v2
.end method

.method private getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "allowSeeksIfLengthUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 581
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 582
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 583
    new-instance v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 584
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V

    .line 583
    return-object v0
.end method

.method private static getId3TlenUs(Landroidx/media3/common/Metadata;)J
    .locals 5
    .param p0, "metadata"    # Landroidx/media3/common/Metadata;

    .line 708
    if-eqz p0, :cond_1

    .line 709
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    .line 710
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 711
    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 712
    .local v2, "entry":Landroidx/media3/common/Metadata$Entry;
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v3, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    .line 713
    const-string v4, "TLEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v3, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    return-wide v3

    .line 710
    .end local v2    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static getSeekFrameHeader(Landroidx/media3/common/util/ParsableByteArray;I)I
    .locals 2
    .param p0, "frame"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "xingBase"    # I

    .line 676
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 677
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 678
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 679
    .local v0, "headerData":I
    const v1, 0x58696e67

    if-eq v0, v1, :cond_0

    const v1, 0x496e666f

    if-ne v0, v1, :cond_1

    .line 680
    :cond_0
    return v0

    .line 683
    .end local v0    # "headerData":I
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_2

    .line 684
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 685
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x56425249

    if-ne v0, v1, :cond_2

    .line 686
    return v1

    .line 689
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static headersMatch(IJ)Z
    .locals 4
    .param p0, "headerA"    # I
    .param p1, "headerB"    # J

    .line 667
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/32 v2, -0x1f400

    and-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1(IIIII)Z
    .locals 3
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 134
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_2

    if-ne p3, v0, :cond_2

    const/16 v0, 0x54

    if-eq p4, v0, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static maybeHandleSeekMetadata(Landroidx/media3/common/Metadata;J)Landroidx/media3/extractor/mp3/MlltSeeker;
    .locals 6
    .param p0, "metadata"    # Landroidx/media3/common/Metadata;
    .param p1, "firstFramePosition"    # J

    .line 695
    if-eqz p0, :cond_1

    .line 696
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    .line 697
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 698
    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 699
    .local v2, "entry":Landroidx/media3/common/Metadata$Entry;
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    .line 700
    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-static {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v4

    invoke-static {p1, p2, v3, v4, v5}, Landroidx/media3/extractor/mp3/MlltSeeker;->create(JLandroidx/media3/extractor/metadata/id3/MlltFrame;J)Landroidx/media3/extractor/mp3/MlltSeeker;

    move-result-object v3

    return-object v3

    .line 697
    .end local v2    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeReadSeekFrame(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;
    .locals 16
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    move-object v14, v0

    .line 523
    .local v14, "frame":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v2, 0x0

    invoke-interface {v7, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 525
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_2

    const/16 v2, 0x24

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    :cond_2
    :goto_0
    move v15, v2

    .line 528
    .local v15, "xingBase":I
    invoke-static {v14, v15}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Landroidx/media3/common/util/ParsableByteArray;I)I

    move-result v4

    .line 530
    .local v4, "seekHeader":I
    sparse-switch v4, :sswitch_data_0

    .line 571
    move v13, v4

    .end local v4    # "seekHeader":I
    .local v13, "seekHeader":I
    const/4 v0, 0x0

    .line 572
    .local v0, "seeker":Landroidx/media3/extractor/mp3/Seeker;
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto/16 :goto_1

    .line 564
    .end local v0    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    .end local v13    # "seekHeader":I
    .restart local v4    # "seekHeader":I
    :sswitch_0
    nop

    .line 565
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iget-object v12, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    move-object v13, v14

    invoke-static/range {v8 .. v13}, Landroidx/media3/extractor/mp3/VbriSeeker;->create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;

    move-result-object v0

    .line 566
    .restart local v0    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    iget-object v1, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {v7, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 567
    move v13, v4

    goto/16 :goto_1

    .line 533
    .end local v0    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    :sswitch_1
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-static {v0, v14}, Landroidx/media3/extractor/mp3/XingFrame;->parse(Landroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/XingFrame;

    move-result-object v8

    .line 534
    .local v8, "xingFrame":Landroidx/media3/extractor/mp3/XingFrame;
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-virtual {v0}, Landroidx/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v8, Landroidx/media3/extractor/mp3/XingFrame;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, v8, Landroidx/media3/extractor/mp3/XingFrame;->encoderPadding:I

    if-eq v0, v1, :cond_3

    .line 537
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v1, v8, Landroidx/media3/extractor/mp3/XingFrame;->encoderDelay:I

    iput v1, v0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 538
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v1, v8, Landroidx/media3/extractor/mp3/XingFrame;->encoderPadding:I

    iput v1, v0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 540
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    .line 541
    .local v9, "startPosition":J
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, v8, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 543
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    iget-wide v2, v8, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long/2addr v2, v9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data size mismatch between stream ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and Xing frame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v8, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using Xing value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, "Mp3Extractor"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_4
    iget-object v0, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {v7, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 557
    const v0, 0x58696e67

    if-ne v4, v0, :cond_5

    .line 558
    invoke-static {v8, v9, v10}, Landroidx/media3/extractor/mp3/XingSeeker;->create(Landroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/XingSeeker;

    move-result-object v0

    move v13, v4

    .restart local v0    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    goto :goto_1

    .line 560
    .end local v0    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object v3, v8

    move v13, v4

    .end local v4    # "seekHeader":I
    .restart local v13    # "seekHeader":I
    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(JLandroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v0

    .line 562
    .restart local v0    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    nop

    .line 574
    .end local v8    # "xingFrame":Landroidx/media3/extractor/mp3/XingFrame;
    .end local v9    # "startPosition":J
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x496e666f -> :sswitch_1
        0x56425249 -> :sswitch_0
        0x58696e67 -> :sswitch_1
    .end sparse-switch
.end method

.method private maybeUpdateCbrDurationToLastSample()V
    .locals 4

    .line 649
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v0, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 650
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 652
    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 654
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->copyWithNewDataEndPosition(J)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 655
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 657
    :cond_0
    return-void
.end method

.method private peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "extractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    .line 455
    .local v2, "dataEndPosition":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 457
    return v1

    .line 461
    .end local v2    # "dataEndPosition":J
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 462
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 461
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/EOFException;
    return v1
.end method

.method private readInternal(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 281
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, -0x1

    return v1

    .line 288
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    if-nez v0, :cond_3

    .line 289
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeSeeker(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 290
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 291
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 294
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 295
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 296
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v1, v1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 297
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v1, v1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 298
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 299
    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 300
    .local v0, "format":Landroidx/media3/common/Format$Builder;
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getAverageBitrate()I

    move-result v1

    const v2, -0x7fffffff

    if-eq v1, v2, :cond_2

    .line 301
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getAverageBitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 303
    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 304
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    .end local v0    # "format":Landroidx/media3/common/Format$Builder;
    goto :goto_2

    .line 305
    :cond_3
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 306
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 307
    .local v0, "inputPosition":J
    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 309
    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3

    .line 305
    .end local v0    # "inputPosition":J
    :cond_4
    :goto_2
    nop

    .line 312
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 11
    .param p1, "extractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    .line 317
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 318
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 319
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return v2

    .line 322
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 323
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 324
    .local v0, "sampleHeaderData":I
    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 325
    invoke-static {v0}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 332
    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 333
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 334
    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 335
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 336
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 339
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 340
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v6, v6, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 341
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v4, v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v4, :cond_4

    .line 342
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 345
    .local v4, "indexSeeker":Landroidx/media3/extractor/mp3/IndexSeeker;
    iget-wide v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v7, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 346
    invoke-direct {p0, v5, v6}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 345
    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/media3/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    .line 348
    iget-boolean v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v5, :cond_4

    iget-wide v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v4, v5, v6}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    iput-boolean v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 350
    iget-object v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_1

    .line 327
    .end local v4    # "indexSeeker":Landroidx/media3/extractor/mp3/IndexSeeker;
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 328
    iput v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 329
    return v3

    .line 354
    .end local v0    # "sampleHeaderData":I
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    .line 355
    .local v0, "bytesAppended":I
    if-ne v0, v2, :cond_5

    .line 356
    return v2

    .line 358
    :cond_5
    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 359
    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_6

    .line 360
    return v3

    .line 362
    :cond_6
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 363
    invoke-direct {p0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v8, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 362
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 364
    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 365
    iput v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 366
    return v3
.end method

.method private synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 11
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "validFrameCount":I
    const/4 v1, 0x0

    .line 376
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v2, 0x0

    .line 377
    .local v2, "peekedId3Bytes":I
    const/4 v3, 0x0

    .line 378
    .local v3, "searchedBytes":I
    if-eqz p2, :cond_0

    const v4, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v4, 0x20000

    .line 379
    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 380
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    .line 383
    iget v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 385
    .local v5, "parseAllId3Frames":Z
    :goto_1
    if-eqz v5, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    sget-object v8, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 386
    .local v8, "id3FramePredicate":Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    :goto_2
    iget-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media3/extractor/Id3Peeker;

    invoke-virtual {v9, p1, v8}, Landroidx/media3/extractor/Id3Peeker;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/common/Metadata;

    move-result-object v9

    iput-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    .line 387
    iget-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v9, :cond_3

    .line 388
    iget-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget-object v10, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v9, v10}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    .line 390
    :cond_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v9

    long-to-int v2, v9

    .line 391
    if-nez p2, :cond_4

    .line 392
    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 396
    .end local v5    # "parseAllId3Frames":Z
    .end local v8    # "id3FramePredicate":Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 397
    if-lez v0, :cond_5

    .line 399
    goto :goto_5

    .line 401
    :cond_5
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeUpdateCbrDurationToLastSample()V

    .line 402
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 404
    :cond_6
    iget-object v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 405
    iget-object v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 407
    .local v5, "headerData":I
    if-eqz v1, :cond_7

    int-to-long v8, v1

    .line 408
    invoke-static {v5, v8, v9}, Landroidx/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 409
    :cond_7
    invoke-static {v5}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v8

    move v9, v8

    .local v9, "frameSize":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_c

    .line 411
    .end local v9    # "frameSize":I
    :cond_8
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "searchedBytes":I
    .local v8, "searchedBytes":I
    if-ne v3, v4, :cond_a

    .line 412
    if-eqz p2, :cond_9

    .line 416
    return v6

    .line 413
    :cond_9
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeUpdateCbrDurationToLastSample()V

    .line 414
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 418
    :cond_a
    const/4 v0, 0x0

    .line 419
    const/4 v1, 0x0

    .line 420
    if-eqz p2, :cond_b

    .line 421
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 422
    add-int v3, v2, v8

    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_4

    .line 424
    :cond_b
    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 437
    .end local v5    # "headerData":I
    :goto_4
    move v3, v8

    goto :goto_8

    .line 428
    .end local v8    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v9    # "frameSize":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 429
    if-ne v0, v7, :cond_d

    .line 430
    iget-object v8, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v8, v5}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 431
    move v1, v5

    goto :goto_7

    .line 432
    :cond_d
    const/4 v8, 0x4

    if-ne v0, v8, :cond_f

    .line 433
    nop

    .line 439
    .end local v5    # "headerData":I
    .end local v9    # "frameSize":I
    :goto_5
    if-eqz p2, :cond_e

    .line 440
    add-int v5, v2, v3

    invoke-interface {p1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_6

    .line 442
    :cond_e
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 444
    :goto_6
    iput v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 445
    return v7

    .line 435
    .restart local v5    # "headerData":I
    .restart local v9    # "frameSize":I
    :cond_f
    :goto_7
    add-int/lit8 v8, v9, -0x4

    invoke-interface {p1, v8}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 437
    .end local v5    # "headerData":I
    .end local v9    # "frameSize":I
    :goto_8
    goto :goto_3
.end method


# virtual methods
.method public disableSeeking()V
    .locals 1

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    .line 275
    return-void
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 229
    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 230
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 231
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 232
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 233
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

    .line 255
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 256
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->readInternal(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    .line 257
    .local v0, "readResult":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v1, v1, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_0

    .line 259
    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    invoke-direct {p0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v1

    .line 260
    .local v1, "durationUs":J
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v3, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    .line 262
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 265
    .end local v1    # "durationUs":J
    :cond_0
    return v0
.end method

.method public release()V
    .locals 0

    .line 251
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 238
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 239
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 240
    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 241
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 242
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v0, v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {v0, p3, p4}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 244
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 246
    :cond_0
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

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
