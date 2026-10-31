.class final Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field private final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final format:Landroidx/media3/common/Format;

.field private outputFrameCount:J

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeBytes:I

.field private final trackOutput:Landroidx/media3/extractor/TrackOutput;

.field private final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .locals 4
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;
    .param p3, "wavFormat"    # Landroidx/media3/extractor/wav/WavFormat;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "pcmEncoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 307
    iput-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 308
    iput-object p3, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 310
    iget v0, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    iget v1, p3, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 312
    .local v0, "bytesPerFrame":I
    iget v1, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    if-ne v1, v0, :cond_0

    .line 318
    iget v1, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 319
    .local v1, "constantBitrate":I
    iget v2, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0xa

    .line 320
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 321
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 323
    invoke-virtual {v2, p4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 325
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 326
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    .line 327
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 328
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 329
    invoke-virtual {v2, p5}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Landroidx/media3/common/Format;

    .line 331
    return-void

    .line 313
    .end local v1    # "constantBitrate":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected block size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public init(IJ)V
    .locals 9
    .param p1, "dataStartPosition"    # I
    .param p2, "dataEndPosition"    # J

    .line 342
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v8, Landroidx/media3/extractor/wav/WavSeekMap;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    const/4 v3, 0x1

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/wav/WavSeekMap;-><init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v8}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 344
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Landroidx/media3/common/Format;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 345
    return-void
.end method

.method public reset(J)V
    .locals 2
    .param p1, "timeUs"    # J

    .line 335
    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    .line 337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 338
    return-void
.end method

.method public sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z
    .locals 20
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "bytesLeft"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .end local p2    # "bytesLeft":J
    .local v1, "bytesLeft":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v5, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v5, v7, :cond_1

    .line 351
    iget v3, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    iget v4, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 352
    .local v3, "bytesToRead":I
    iget-object v4, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    move-object/from16 v5, p1

    invoke-interface {v4, v5, v3, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v4

    .line 353
    .local v4, "bytesAppended":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 354
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 356
    :cond_0
    iget v6, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v6, v4

    iput v6, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    .line 357
    int-to-long v6, v4

    sub-long/2addr v1, v6

    .line 359
    .end local v3    # "bytesToRead":I
    .end local v4    # "bytesAppended":I
    :goto_1
    goto :goto_0

    .line 350
    :cond_1
    move-object/from16 v5, p1

    .line 364
    iget-object v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v7, v7, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 365
    .local v7, "bytesPerFrame":I
    iget v8, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v8, v7

    .line 366
    .local v8, "pendingFrames":I
    if-lez v8, :cond_2

    .line 367
    iget-wide v9, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v11, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    iget-object v13, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v13, v13, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v13, v13

    .line 369
    const-wide/32 v15, 0xf4240

    move-wide/from16 v17, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 371
    .local v9, "timeUs":J
    mul-int v11, v8, v7

    .line 372
    .local v11, "size":I
    iget v12, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v12, v11

    .line 373
    .local v12, "offset":I
    iget-object v13, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/16 v16, 0x1

    const/16 v19, 0x0

    move-wide v14, v9

    move/from16 v17, v11

    move/from16 v18, v12

    invoke-interface/range {v13 .. v19}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 375
    iget-wide v13, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    move v15, v7

    .end local v7    # "bytesPerFrame":I
    .local v15, "bytesPerFrame":I
    int-to-long v6, v8

    add-long/2addr v13, v6

    iput-wide v13, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 376
    iput v12, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    goto :goto_2

    .line 366
    .end local v9    # "timeUs":J
    .end local v11    # "size":I
    .end local v12    # "offset":I
    .end local v15    # "bytesPerFrame":I
    .restart local v7    # "bytesPerFrame":I
    :cond_2
    move v15, v7

    .line 379
    .end local v7    # "bytesPerFrame":I
    .restart local v15    # "bytesPerFrame":I
    :goto_2
    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    return v6
.end method
