.class public final Landroidx/media3/extractor/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final maxNumReorderFrames:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIFLjava/lang/String;)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitdepthLuma"    # I
    .param p6, "bitdepthChroma"    # I
    .param p7, "colorSpace"    # I
    .param p8, "colorRange"    # I
    .param p9, "colorTransfer"    # I
    .param p10, "maxNumReorderFrames"    # I
    .param p11, "pixelWidthHeightRatio"    # F
    .param p12, "codecs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 175
    iput p2, p0, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    .line 176
    iput p3, p0, Landroidx/media3/extractor/AvcConfig;->width:I

    .line 177
    iput p4, p0, Landroidx/media3/extractor/AvcConfig;->height:I

    .line 178
    iput p5, p0, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 179
    iput p6, p0, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 180
    iput p7, p0, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 181
    iput p8, p0, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 182
    iput p9, p0, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    .line 183
    iput p10, p0, Landroidx/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    .line 184
    iput p11, p0, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 185
    iput-object p12, p0, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 186
    return-void
.end method

.method private static buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 189
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 190
    .local v0, "length":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 191
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 192
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;
    .locals 28
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x4

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v2, 0x3

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 46
    .local v0, "nalUnitLengthFieldLength":I
    if-eq v0, v2, :cond_3

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v15, v3, 0x1f

    .line 51
    .local v15, "numSequenceParameterSets":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v15, :cond_0

    .line 52
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "j":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    move v14, v3

    .line 55
    .local v14, "numPictureParameterSets":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1
    if-ge v3, v14, :cond_1

    .line 56
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "j":I
    :cond_1
    const/4 v3, -0x1

    .line 60
    .local v3, "width":I
    const/4 v4, -0x1

    .line 61
    .local v4, "height":I
    const/4 v5, -0x1

    .line 62
    .local v5, "bitdepthLuma":I
    const/4 v6, -0x1

    .line 63
    .local v6, "bitdepthChroma":I
    const/4 v7, -0x1

    .line 64
    .local v7, "colorSpace":I
    const/4 v8, -0x1

    .line 65
    .local v8, "colorRange":I
    const/4 v9, -0x1

    .line 66
    .local v9, "colorTransfer":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 67
    .local v10, "pixelWidthHeightRatio":F
    const/4 v11, 0x0

    .line 69
    .local v11, "codecs":Ljava/lang/String;
    const/16 v12, 0x10

    .line 70
    .local v12, "maxNumReorderFrames":I
    if-lez v15, :cond_2

    .line 71
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    move-object/from16 v17, v16

    .line 72
    .local v17, "sps":[B
    nop

    .line 74
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move/from16 v16, v3

    move-object/from16 v1, v17

    .end local v3    # "width":I
    .end local v17    # "sps":[B
    .local v1, "sps":[B
    .local v16, "width":I
    array-length v3, v1

    .line 73
    invoke-static {v13, v0, v3}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v3

    .line 75
    .local v3, "spsData":Landroidx/media3/container/NalUnitUtil$SpsData;
    iget v13, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 76
    .end local v16    # "width":I
    .local v13, "width":I
    move-object/from16 v17, v1

    .end local v1    # "sps":[B
    .restart local v17    # "sps":[B
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    move v4, v1

    .line 77
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v5, v1, 0x8

    .line 78
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v6, v1, 0x8

    .line 79
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    move v7, v1

    .line 80
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    move v8, v1

    .line 81
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    move v9, v1

    .line 82
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    move v12, v1

    .line 83
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    move v10, v1

    .line 84
    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    move/from16 v16, v4

    .end local v4    # "height":I
    .local v16, "height":I
    iget v4, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    move/from16 v18, v5

    .end local v5    # "bitdepthLuma":I
    .local v18, "bitdepthLuma":I
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 85
    invoke-static {v1, v4, v5}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move/from16 v17, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v1, v16

    move/from16 v16, v13

    goto :goto_2

    .line 70
    .end local v13    # "width":I
    .end local v16    # "height":I
    .end local v17    # "sps":[B
    .end local v18    # "bitdepthLuma":I
    .local v3, "width":I
    .restart local v4    # "height":I
    .restart local v5    # "bitdepthLuma":I
    :cond_2
    move/from16 v16, v3

    .end local v3    # "width":I
    .local v16, "width":I
    move v1, v4

    move/from16 v18, v5

    move/from16 v17, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    .line 89
    .end local v4    # "height":I
    .end local v5    # "bitdepthLuma":I
    .end local v6    # "bitdepthChroma":I
    .end local v7    # "colorSpace":I
    .end local v8    # "colorRange":I
    .end local v9    # "colorTransfer":I
    .end local v10    # "pixelWidthHeightRatio":F
    .end local v11    # "codecs":Ljava/lang/String;
    .end local v12    # "maxNumReorderFrames":I
    .local v1, "height":I
    .local v17, "bitdepthChroma":I
    .restart local v18    # "bitdepthLuma":I
    .local v19, "colorSpace":I
    .local v20, "colorRange":I
    .local v21, "colorTransfer":I
    .local v22, "pixelWidthHeightRatio":F
    .local v23, "codecs":Ljava/lang/String;
    .local v24, "maxNumReorderFrames":I
    :goto_2
    new-instance v25, Landroidx/media3/extractor/AvcConfig;

    move-object/from16 v3, v25

    move-object v4, v2

    move v5, v0

    move/from16 v6, v16

    move v7, v1

    move/from16 v8, v18

    move/from16 v9, v17

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v24

    move/from16 v26, v14

    .end local v14    # "numPictureParameterSets":I
    .local v26, "numPictureParameterSets":I
    move/from16 v14, v22

    move/from16 v27, v15

    .end local v15    # "numSequenceParameterSets":I
    .local v27, "numSequenceParameterSets":I
    move-object/from16 v15, v23

    invoke-direct/range {v3 .. v15}, Landroidx/media3/extractor/AvcConfig;-><init>(Ljava/util/List;IIIIIIIIIFLjava/lang/String;)V

    return-object v25

    .line 47
    .end local v1    # "height":I
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v16    # "width":I
    .end local v17    # "bitdepthChroma":I
    .end local v18    # "bitdepthLuma":I
    .end local v19    # "colorSpace":I
    .end local v20    # "colorRange":I
    .end local v21    # "colorTransfer":I
    .end local v22    # "pixelWidthHeightRatio":F
    .end local v23    # "codecs":Ljava/lang/String;
    .end local v24    # "maxNumReorderFrames":I
    .end local v26    # "numPictureParameterSets":I
    .end local v27    # "numSequenceParameterSets":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "data":Landroidx/media3/common/util/ParsableByteArray;
    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "nalUnitLengthFieldLength":I
    .restart local p0    # "data":Landroidx/media3/common/util/ParsableByteArray;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error parsing AVC config"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method
