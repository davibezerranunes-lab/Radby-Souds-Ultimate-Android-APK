.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


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

.field public final maxNumReorderPics:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final stereoMode:I

.field public final vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitdepthLuma"    # I
    .param p6, "bitdepthChroma"    # I
    .param p7, "colorSpace"    # I
    .param p8, "colorRange"    # I
    .param p9, "colorTransfer"    # I
    .param p10, "stereoMode"    # I
    .param p11, "pixelWidthHeightRatio"    # F
    .param p12, "maxNumReorderPics"    # I
    .param p13, "codecs"    # Ljava/lang/String;
    .param p14, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIIFI",
            "Ljava/lang/String;",
            "Landroidx/media3/container/NalUnitUtil$H265VpsData;",
            ")V"
        }
    .end annotation

    .line 272
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 274
    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 275
    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->width:I

    .line 276
    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->height:I

    .line 277
    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 278
    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 279
    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 280
    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 281
    iput p9, p0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 282
    iput p10, p0, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    .line 283
    iput p11, p0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 284
    iput p12, p0, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 285
    iput-object p13, p0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 286
    iput-object p14, p0, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 287
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v0

    return-object v0
.end method

.method private static parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 39
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "layered"    # Z
    .param p2, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 74
    move-object/from16 v1, p0

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 77
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 79
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    .line 82
    .local v2, "lengthSizeMinusOne":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 83
    .local v3, "numberOfArrays":I
    const/4 v4, 0x0

    .line 84
    .local v4, "csdLength":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 85
    .local v5, "csdStartPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 86
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 88
    .local v7, "numberOfNalUnits":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_1

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 90
    .local v9, "nalUnitLength":I
    add-int/lit8 v10, v9, 0x4

    add-int/2addr v4, v10

    .line 91
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 88
    .end local v9    # "nalUnitLength":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 85
    .end local v7    # "numberOfNalUnits":I
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 96
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 97
    new-array v6, v4, [B

    .line 98
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 99
    .local v7, "bufferPosition":I
    const/4 v8, -0x1

    .line 100
    .local v8, "width":I
    const/4 v9, -0x1

    .line 101
    .local v9, "height":I
    const/4 v10, -0x1

    .line 102
    .local v10, "bitdepthLuma":I
    const/4 v11, -0x1

    .line 103
    .local v11, "bitdepthChroma":I
    const/4 v12, -0x1

    .line 104
    .local v12, "colorSpace":I
    const/4 v13, -0x1

    .line 105
    .local v13, "colorRange":I
    const/4 v14, -0x1

    .line 106
    .local v14, "colorTransfer":I
    const/4 v15, -0x1

    .line 107
    .local v15, "stereoMode":I
    const/high16 v16, 0x3f800000    # 1.0f

    .line 108
    .local v16, "pixelWidthHeightRatio":F
    const/16 v17, -0x1

    .line 109
    .local v17, "maxNumReorderPics":I
    const/16 v18, 0x0

    .line 110
    .local v18, "codecs":Ljava/lang/String;
    move-object/from16 v19, p2

    .line 111
    .local v19, "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    const/16 v20, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v32, v17

    move-object/from16 v33, v18

    move-object/from16 v34, v19

    move/from16 v8, v20

    .end local v9    # "height":I
    .end local v10    # "bitdepthLuma":I
    .end local v11    # "bitdepthChroma":I
    .end local v12    # "colorSpace":I
    .end local v13    # "colorRange":I
    .end local v14    # "colorTransfer":I
    .end local v15    # "stereoMode":I
    .end local v16    # "pixelWidthHeightRatio":F
    .end local v17    # "maxNumReorderPics":I
    .end local v18    # "codecs":Ljava/lang/String;
    .end local v19    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v8, "i":I
    .local v23, "width":I
    .local v24, "height":I
    .local v25, "bitdepthLuma":I
    .local v26, "bitdepthChroma":I
    .local v27, "colorSpace":I
    .local v28, "colorRange":I
    .local v29, "colorTransfer":I
    .local v30, "stereoMode":I
    .local v31, "pixelWidthHeightRatio":F
    .local v32, "maxNumReorderPics":I
    .local v33, "codecs":Ljava/lang/String;
    .local v34, "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :goto_3
    if-ge v8, v3, :cond_a

    .line 112
    nop

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v9, v9, 0x3f

    .line 114
    .local v9, "nalUnitType":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 115
    .local v10, "numberOfNalUnits":I
    const/4 v11, 0x0

    move-object/from16 v12, v34

    .end local v34    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v11, "j":I
    .local v12, "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :goto_4
    if-ge v11, v10, :cond_9

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    .line 117
    .local v13, "nalUnitLength":I
    sget-object v14, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v15, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v15, v15

    const/4 v0, 0x0

    invoke-static {v14, v0, v6, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    sget-object v14, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v14, v14

    add-int/2addr v7, v14

    .line 124
    nop

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 124
    invoke-static {v14, v15, v6, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    const/16 v14, 0x20

    if-ne v9, v14, :cond_3

    if-nez v11, :cond_3

    .line 127
    add-int v0, v7, v13

    .line 128
    invoke-static {v6, v7, v0}, Landroidx/media3/container/NalUnitUtil;->parseH265VpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    move-result-object v0

    move-object v12, v0

    move/from16 v38, v2

    move/from16 v35, v3

    move/from16 v36, v5

    move/from16 v37, v10

    goto/16 :goto_7

    .line 130
    :cond_3
    const/16 v14, 0x21

    if-ne v9, v14, :cond_6

    if-nez v11, :cond_6

    .line 131
    add-int v0, v7, v13

    .line 132
    invoke-static {v6, v7, v0, v12}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v0

    .line 134
    .local v0, "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    move/from16 v23, v14

    .line 135
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    move/from16 v24, v14

    .line 136
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v25, v14, 0x8

    .line 137
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v26, v14, 0x8

    .line 138
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    move/from16 v27, v14

    .line 139
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    move/from16 v28, v14

    .line 140
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v29, v14

    .line 141
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v31, v14

    .line 142
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    move/from16 v32, v14

    .line 144
    iget-object v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v14, :cond_4

    .line 145
    iget-object v14, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v14, v14, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-object v15, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget-boolean v15, v15, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    move/from16 v35, v3

    .end local v3    # "numberOfArrays":I
    .local v35, "numberOfArrays":I
    iget-object v3, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v3, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    move/from16 v36, v5

    .end local v5    # "csdStartPosition":I
    .local v36, "csdStartPosition":I
    iget-object v5, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v5, v5, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    move/from16 v37, v10

    .end local v10    # "numberOfNalUnits":I
    .local v37, "numberOfNalUnits":I
    iget-object v10, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget-object v10, v10, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    move/from16 v38, v2

    .end local v2    # "lengthSizeMinusOne":I
    .local v38, "lengthSizeMinusOne":I
    iget-object v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    .line 146
    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v19, v3

    move/from16 v20, v5

    move-object/from16 v21, v10

    move/from16 v22, v2

    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v33, v2

    .end local v33    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    goto :goto_5

    .line 144
    .end local v35    # "numberOfArrays":I
    .end local v36    # "csdStartPosition":I
    .end local v37    # "numberOfNalUnits":I
    .end local v38    # "lengthSizeMinusOne":I
    .local v2, "lengthSizeMinusOne":I
    .restart local v3    # "numberOfArrays":I
    .restart local v5    # "csdStartPosition":I
    .restart local v10    # "numberOfNalUnits":I
    .restart local v33    # "codecs":Ljava/lang/String;
    :cond_4
    move/from16 v38, v2

    move/from16 v35, v3

    move/from16 v36, v5

    move/from16 v37, v10

    .line 154
    .end local v0    # "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .end local v2    # "lengthSizeMinusOne":I
    .end local v3    # "numberOfArrays":I
    .end local v5    # "csdStartPosition":I
    .end local v10    # "numberOfNalUnits":I
    .restart local v35    # "numberOfArrays":I
    .restart local v36    # "csdStartPosition":I
    .restart local v37    # "numberOfNalUnits":I
    .restart local v38    # "lengthSizeMinusOne":I
    :cond_5
    :goto_5
    goto :goto_7

    .line 130
    .end local v35    # "numberOfArrays":I
    .end local v36    # "csdStartPosition":I
    .end local v37    # "numberOfNalUnits":I
    .end local v38    # "lengthSizeMinusOne":I
    .restart local v2    # "lengthSizeMinusOne":I
    .restart local v3    # "numberOfArrays":I
    .restart local v5    # "csdStartPosition":I
    .restart local v10    # "numberOfNalUnits":I
    :cond_6
    move/from16 v38, v2

    move/from16 v35, v3

    move/from16 v36, v5

    move/from16 v37, v10

    .line 154
    .end local v2    # "lengthSizeMinusOne":I
    .end local v3    # "numberOfArrays":I
    .end local v5    # "csdStartPosition":I
    .end local v10    # "numberOfNalUnits":I
    .restart local v35    # "numberOfArrays":I
    .restart local v36    # "csdStartPosition":I
    .restart local v37    # "numberOfNalUnits":I
    .restart local v38    # "lengthSizeMinusOne":I
    const/16 v2, 0x27

    if-ne v9, v2, :cond_5

    if-nez v11, :cond_5

    .line 155
    add-int v2, v7, v13

    .line 156
    invoke-static {v6, v7, v2}, Landroidx/media3/container/NalUnitUtil;->parseH265Sei3dRefDisplayInfo([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    move-result-object v2

    .line 158
    .local v2, "seiData":Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    if-eqz v2, :cond_8

    if-eqz v12, :cond_8

    .line 160
    iget v3, v2, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->leftViewId:I

    iget-object v5, v12, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v0, v0, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    if-ne v3, v0, :cond_7

    .line 161
    const/4 v0, 0x4

    goto :goto_6

    .line 162
    :cond_7
    const/4 v0, 0x5

    :goto_6
    move/from16 v30, v0

    .line 165
    .end local v2    # "seiData":Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    :cond_8
    :goto_7
    add-int/2addr v7, v13

    .line 166
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 115
    .end local v13    # "nalUnitLength":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v35

    move/from16 v5, v36

    move/from16 v10, v37

    move/from16 v2, v38

    const/4 v0, 0x4

    goto/16 :goto_4

    .end local v35    # "numberOfArrays":I
    .end local v36    # "csdStartPosition":I
    .end local v37    # "numberOfNalUnits":I
    .end local v38    # "lengthSizeMinusOne":I
    .local v2, "lengthSizeMinusOne":I
    .restart local v3    # "numberOfArrays":I
    .restart local v5    # "csdStartPosition":I
    .restart local v10    # "numberOfNalUnits":I
    :cond_9
    move/from16 v38, v2

    move/from16 v35, v3

    move/from16 v36, v5

    move/from16 v37, v10

    .line 111
    .end local v2    # "lengthSizeMinusOne":I
    .end local v3    # "numberOfArrays":I
    .end local v5    # "csdStartPosition":I
    .end local v9    # "nalUnitType":I
    .end local v10    # "numberOfNalUnits":I
    .end local v11    # "j":I
    .restart local v35    # "numberOfArrays":I
    .restart local v36    # "csdStartPosition":I
    .restart local v38    # "lengthSizeMinusOne":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v34, v12

    const/4 v0, 0x4

    goto/16 :goto_3

    .end local v12    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v35    # "numberOfArrays":I
    .end local v36    # "csdStartPosition":I
    .end local v38    # "lengthSizeMinusOne":I
    .restart local v2    # "lengthSizeMinusOne":I
    .restart local v3    # "numberOfArrays":I
    .restart local v5    # "csdStartPosition":I
    .restart local v34    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :cond_a
    move/from16 v38, v2

    move/from16 v35, v3

    move/from16 v36, v5

    .line 171
    .end local v2    # "lengthSizeMinusOne":I
    .end local v3    # "numberOfArrays":I
    .end local v5    # "csdStartPosition":I
    .end local v8    # "i":I
    .restart local v35    # "numberOfArrays":I
    .restart local v36    # "csdStartPosition":I
    .restart local v38    # "lengthSizeMinusOne":I
    if-nez v4, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_b
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_8
    move-object v9, v0

    .line 172
    .local v9, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Landroidx/media3/extractor/HevcConfig;

    add-int/lit8 v10, v38, 0x1

    move-object v8, v0

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v17, v29

    move/from16 v18, v30

    move/from16 v19, v31

    move/from16 v20, v32

    move-object/from16 v21, v33

    move-object/from16 v22, v34

    invoke-direct/range {v8 .. v22}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 187
    .end local v4    # "csdLength":I
    .end local v6    # "buffer":[B
    .end local v7    # "bufferPosition":I
    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v23    # "width":I
    .end local v24    # "height":I
    .end local v25    # "bitdepthLuma":I
    .end local v26    # "bitdepthChroma":I
    .end local v27    # "colorSpace":I
    .end local v28    # "colorRange":I
    .end local v29    # "colorTransfer":I
    .end local v30    # "stereoMode":I
    .end local v31    # "pixelWidthHeightRatio":F
    .end local v32    # "maxNumReorderPics":I
    .end local v33    # "codecs":Ljava/lang/String;
    .end local v34    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v35    # "numberOfArrays":I
    .end local v36    # "csdStartPosition":I
    .end local v38    # "lengthSizeMinusOne":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 189
    if-eqz p1, :cond_c

    const-string v3, "L-HEVC config"

    goto :goto_9

    :cond_c
    const-string v3, "HEVC config"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method

.method public static parseLayered(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 1
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v0

    return-object v0
.end method
