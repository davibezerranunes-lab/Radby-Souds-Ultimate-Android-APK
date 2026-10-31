.class public final Landroidx/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/BoxParser$TkhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$MdhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StsdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;,
        Landroidx/media3/extractor/mp4/BoxParser$VexuData;,
        Landroidx/media3/extractor/mp4/BoxParser$EyesData;,
        Landroidx/media3/extractor/mp4/BoxParser$StriData;,
        Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BoxParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2335
    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1667
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 2323
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2324
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 2325
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 2326
    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    .line 2327
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v5, v5, p3

    if-gtz v5, :cond_0

    aget-wide v5, p0, v4

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    aget-wide v5, p0, v2

    cmp-long v5, v5, p5

    if-gez v5, :cond_0

    cmp-long v5, p5, p1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private static findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I
    .locals 6
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "boxType"    # I
    .param p2, "parentBoxPosition"    # I
    .param p3, "parentBoxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2061
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2062
    .local v0, "childAtomPosition":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2063
    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    .line 2064
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2065
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 2066
    .local v3, "childAtomSize":I
    if-lez v3, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2067
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 2068
    .local v4, "childType":I
    if-ne v4, p1, :cond_2

    .line 2069
    return v0

    .line 2071
    :cond_2
    add-int/2addr v0, v3

    .line 2072
    .end local v3    # "childAtomSize":I
    .end local v4    # "childType":I
    goto :goto_1

    .line 2073
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1
    .param p0, "hdlr"    # I

    .line 936
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    .line 937
    const/4 v0, 0x1

    return v0

    .line 938
    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    .line 939
    const/4 v0, 0x2

    return v0

    .line 940
    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 942
    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    .line 943
    const/4 v0, 0x5

    return v0

    .line 945
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 941
    :cond_4
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public static maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p0, "meta"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 296
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 301
    .local v0, "endPosition":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 302
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    .line 303
    add-int/lit8 v0, v0, 0x4

    .line 305
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 306
    return-void
.end method

.method private static parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 29
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p8, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1735
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1737
    const/4 v8, 0x0

    .line 1738
    .local v8, "quickTimeSoundDescriptionVersion":I
    const/4 v10, 0x6

    if-eqz p6, :cond_0

    .line 1739
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 1740
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 1742
    :cond_0
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1747
    :goto_0
    const/4 v11, 0x0

    .line 1748
    .local v11, "sampleRateMlp":I
    const/4 v12, -0x1

    .line 1749
    .local v12, "pcmEncoding":I
    const/4 v13, 0x0

    .line 1750
    .local v13, "codecs":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1752
    .local v14, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    const/16 v15, 0x10

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eqz v8, :cond_d

    if-ne v8, v9, :cond_1

    move/from16 v22, v11

    goto/16 :goto_7

    .line 1764
    :cond_1
    if-ne v8, v10, :cond_c

    .line 1765
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1767
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v20

    move/from16 v22, v11

    .end local v11    # "sampleRateMlp":I
    .local v22, "sampleRateMlp":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 1768
    .local v10, "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 1770
    .local v11, "channelCount":I
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 1772
    .local v9, "bitsPerSample":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    .line 1773
    .local v16, "formatSpecificFlags":I
    and-int/lit8 v21, v16, 0x1

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    goto :goto_1

    :cond_2
    const/16 v21, 0x0

    .line 1774
    .local v21, "isFloat":Z
    :goto_1
    and-int/lit8 v24, v16, 0x2

    if-eqz v24, :cond_3

    const/16 v24, 0x1

    goto :goto_2

    :cond_3
    const/16 v24, 0x0

    .line 1775
    .local v24, "isBigEndian":Z
    :goto_2
    if-nez v21, :cond_a

    .line 1776
    const/16 v15, 0x8

    if-ne v9, v15, :cond_4

    .line 1777
    const/4 v12, 0x3

    goto :goto_6

    .line 1778
    :cond_4
    const/16 v15, 0x10

    if-ne v9, v15, :cond_6

    .line 1779
    if-eqz v24, :cond_5

    const/high16 v15, 0x10000000

    goto :goto_3

    :cond_5
    const/4 v15, 0x2

    :goto_3
    move v12, v15

    goto :goto_6

    .line 1780
    :cond_6
    const/16 v15, 0x18

    if-ne v9, v15, :cond_8

    .line 1781
    if-eqz v24, :cond_7

    const/high16 v15, 0x50000000

    goto :goto_4

    :cond_7
    const/16 v15, 0x15

    :goto_4
    move v12, v15

    goto :goto_6

    .line 1782
    :cond_8
    const/16 v15, 0x20

    if-ne v9, v15, :cond_b

    .line 1783
    if-eqz v24, :cond_9

    const/high16 v15, 0x60000000

    goto :goto_5

    :cond_9
    const/16 v15, 0x16

    :goto_5
    move v12, v15

    goto :goto_6

    .line 1785
    :cond_a
    const/16 v15, 0x20

    if-ne v9, v15, :cond_b

    .line 1786
    const/4 v12, 0x4

    .line 1788
    :cond_b
    :goto_6
    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1789
    .end local v9    # "bitsPerSample":I
    .end local v16    # "formatSpecificFlags":I
    .end local v21    # "isFloat":Z
    .end local v24    # "isBigEndian":Z
    move/from16 v9, v22

    goto :goto_8

    .line 1791
    .end local v10    # "sampleRate":I
    .end local v22    # "sampleRateMlp":I
    .local v11, "sampleRateMlp":I
    :cond_c
    return-void

    .line 1752
    :cond_d
    move/from16 v22, v11

    .line 1753
    .end local v11    # "sampleRateMlp":I
    .restart local v22    # "sampleRateMlp":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1754
    .local v11, "channelCount":I
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1756
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v10

    .line 1758
    .restart local v10    # "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v9

    const/4 v15, 0x4

    sub-int/2addr v9, v15

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1759
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 1761
    .end local v22    # "sampleRateMlp":I
    .local v9, "sampleRateMlp":I
    const/4 v15, 0x1

    if-ne v8, v15, :cond_e

    .line 1762
    const/16 v15, 0x10

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1797
    :cond_e
    :goto_8
    const v15, 0x69616d66

    if-ne v1, v15, :cond_f

    .line 1798
    const/4 v11, -0x1

    .line 1799
    const/4 v10, -0x1

    .line 1802
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 1803
    .local v15, "childPosition":I
    move/from16 v17, v8

    .end local v8    # "quickTimeSoundDescriptionVersion":I
    .local v17, "quickTimeSoundDescriptionVersion":I
    const v8, 0x656e6361

    move/from16 v21, v10

    .end local v10    # "sampleRate":I
    .local v21, "sampleRate":I
    if-ne v1, v8, :cond_12

    .line 1805
    nop

    .line 1806
    invoke-static {v0, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    .line 1807
    .local v8, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v8, :cond_11

    .line 1808
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1810
    .end local p1    # "atomType":I
    .local v1, "atomType":I
    if-nez v6, :cond_10

    .line 1811
    const/4 v10, 0x0

    goto :goto_9

    .line 1812
    :cond_10
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v10

    :goto_9
    move-object v6, v10

    .line 1813
    .end local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v6, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v10, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move/from16 p1, v1

    .end local v1    # "atomType":I
    .restart local p1    # "atomType":I
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v1, v10, p9

    move/from16 v1, p1

    .line 1815
    .end local p1    # "atomType":I
    .restart local v1    # "atomType":I
    :cond_11
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1823
    .end local v8    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_12
    const/4 v8, 0x0

    .line 1824
    .local v8, "mimeType":Ljava/lang/String;
    const v10, 0x61632d33

    move-object/from16 p1, v8

    .end local v8    # "mimeType":Ljava/lang/String;
    .local p1, "mimeType":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne v1, v10, :cond_13

    .line 1825
    const-string v10, "audio/ac3"

    .end local p1    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1826
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_13
    const v10, 0x65632d33

    if-ne v1, v10, :cond_14

    .line 1827
    const-string v10, "audio/eac3"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1828
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_14
    const v10, 0x61632d34

    if-ne v1, v10, :cond_15

    .line 1829
    const-string v10, "audio/ac4"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1830
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_15
    const v10, 0x64747363

    if-ne v1, v10, :cond_16

    .line 1831
    const-string v10, "audio/vnd.dts"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1832
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_16
    const v10, 0x64747368

    if-eq v1, v10, :cond_2a

    const v10, 0x6474736c

    if-ne v1, v10, :cond_17

    goto/16 :goto_b

    .line 1834
    :cond_17
    const v10, 0x64747365

    if-ne v1, v10, :cond_18

    .line 1835
    const-string v10, "audio/vnd.dts.hd;profile=lbr"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1836
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_18
    const v10, 0x64747378

    if-ne v1, v10, :cond_19

    .line 1837
    const-string v10, "audio/vnd.dts.uhd;profile=p2"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1838
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_19
    const v10, 0x73616d72

    if-ne v1, v10, :cond_1a

    .line 1839
    const-string v10, "audio/3gpp"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1840
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1a
    const v10, 0x73617762

    if-ne v1, v10, :cond_1b

    .line 1841
    const-string v10, "audio/amr-wb"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1842
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1b
    const v10, 0x736f7774

    if-ne v1, v10, :cond_1c

    .line 1843
    const-string v10, "audio/raw"

    .line 1844
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    const/4 v12, 0x2

    goto/16 :goto_c

    .line 1845
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1c
    const v10, 0x74776f73

    if-ne v1, v10, :cond_1d

    .line 1846
    const-string v10, "audio/raw"

    .line 1847
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    const/high16 v12, 0x10000000

    goto/16 :goto_c

    .line 1848
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1d
    const v10, 0x6c70636d

    if-ne v1, v10, :cond_1e

    .line 1849
    const-string v10, "audio/raw"

    .line 1850
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    if-ne v12, v8, :cond_2b

    .line 1851
    const/4 v12, 0x2

    goto/16 :goto_c

    .line 1853
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1e
    const v10, 0x2e6d7032

    if-eq v1, v10, :cond_29

    const v10, 0x2e6d7033

    if-ne v1, v10, :cond_1f

    goto :goto_a

    .line 1855
    :cond_1f
    const v10, 0x6d686131

    if-ne v1, v10, :cond_20

    .line 1856
    const-string v10, "audio/mha1"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1857
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_20
    const v10, 0x6d686d31

    if-ne v1, v10, :cond_21

    .line 1858
    const-string v10, "audio/mhm1"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1859
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_21
    const v10, 0x616c6163

    if-ne v1, v10, :cond_22

    .line 1860
    const-string v10, "audio/alac"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1861
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_22
    const v10, 0x616c6177

    if-ne v1, v10, :cond_23

    .line 1862
    const-string v10, "audio/g711-alaw"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1863
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_23
    const v10, 0x756c6177

    if-ne v1, v10, :cond_24

    .line 1864
    const-string v10, "audio/g711-mlaw"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1865
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_24
    const v10, 0x4f707573

    if-ne v1, v10, :cond_25

    .line 1866
    const-string v10, "audio/opus"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1867
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_25
    const v10, 0x664c6143

    if-ne v1, v10, :cond_26

    .line 1868
    const-string v10, "audio/flac"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1869
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_26
    const v10, 0x6d6c7061

    if-ne v1, v10, :cond_27

    .line 1870
    const-string v10, "audio/true-hd"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1871
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_27
    const v10, 0x69616d66

    if-ne v1, v10, :cond_28

    .line 1872
    const-string v10, "audio/iamf"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1871
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_28
    move-object/from16 v10, p1

    goto :goto_c

    .line 1854
    :cond_29
    :goto_a
    const-string v10, "audio/mpeg"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1833
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_2a
    :goto_b
    const-string v10, "audio/vnd.dts.hd"

    .line 1875
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_2b
    :goto_c
    const/16 v16, 0x0

    move v8, v15

    move-object v15, v14

    move-object v14, v13

    move v13, v11

    move/from16 v11, v21

    move-object/from16 v28, v16

    move/from16 v16, v1

    move-object/from16 v1, v28

    .line 1876
    .end local v21    # "sampleRate":I
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v8, "childPosition":I
    .local v11, "sampleRate":I
    .local v13, "channelCount":I
    .local v14, "codecs":Ljava/lang/String;
    .local v15, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v16, "atomType":I
    :goto_d
    move-object/from16 v21, v15

    .end local v15    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v21, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    sub-int v15, v8, v2

    if-ge v15, v3, :cond_45

    .line 1877
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1878
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 1879
    .local v15, "childAtomSize":I
    if-lez v15, :cond_2c

    const/4 v2, 0x1

    goto :goto_e

    :cond_2c
    const/4 v2, 0x0

    :goto_e
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1881
    .local v2, "childAtomType":I
    const v3, 0x6d686143

    if-ne v2, v3, :cond_2f

    .line 1885
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1886
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1887
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 1888
    .local v24, "mpeghProfileLevelIndication":I
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1890
    const-string v3, "audio/mhm1"

    invoke-static {v10, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1891
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    move/from16 v25, v12

    .end local v12    # "pcmEncoding":I
    .local v25, "pcmEncoding":I
    const-string v12, "mhm1.%02X"

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 1892
    .end local v25    # "pcmEncoding":I
    .restart local v12    # "pcmEncoding":I
    :cond_2d
    move/from16 v25, v12

    .end local v12    # "pcmEncoding":I
    .restart local v25    # "pcmEncoding":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v12, "mha1.%02X"

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    nop

    .line 1893
    .end local v14    # "codecs":Ljava/lang/String;
    .local v3, "codecs":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 1894
    .local v12, "mpegh3daConfigLength":I
    new-array v14, v12, [B

    .line 1895
    .local v14, "initializationDataBytes":[B
    move-object/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "codecs":Ljava/lang/String;
    .local v26, "codecs":Ljava/lang/String;
    invoke-virtual {v0, v14, v3, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1897
    if-nez v1, :cond_2e

    .line 1898
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_10

    .line 1902
    :cond_2e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v3, v27

    check-cast v3, [B

    invoke-static {v14, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1904
    .end local v12    # "mpegh3daConfigLength":I
    .end local v14    # "initializationDataBytes":[B
    .end local v24    # "mpeghProfileLevelIndication":I
    :goto_10
    move-object/from16 v14, v26

    const/16 v23, 0x2

    goto/16 :goto_18

    .end local v25    # "pcmEncoding":I
    .end local v26    # "codecs":Ljava/lang/String;
    .local v12, "pcmEncoding":I
    .local v14, "codecs":Ljava/lang/String;
    :cond_2f
    move/from16 v25, v12

    .end local v12    # "pcmEncoding":I
    .restart local v25    # "pcmEncoding":I
    const v3, 0x6d686150

    if-ne v2, v3, :cond_32

    .line 1907
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1908
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1909
    .local v3, "numCompatibleSets":I
    if-lez v3, :cond_31

    .line 1910
    new-array v12, v3, [B

    .line 1911
    .local v12, "mpeghCompatibleProfileLevelSet":[B
    move-object/from16 v24, v14

    const/4 v14, 0x0

    .end local v14    # "codecs":Ljava/lang/String;
    .local v24, "codecs":Ljava/lang/String;
    invoke-virtual {v0, v12, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1912
    if-nez v1, :cond_30

    .line 1913
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_11

    .line 1917
    :cond_30
    nop

    .line 1918
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v14, v26

    check-cast v14, [B

    invoke-static {v14, v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_11

    .line 1909
    .end local v12    # "mpeghCompatibleProfileLevelSet":[B
    .end local v24    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    :cond_31
    move-object/from16 v24, v14

    .line 1921
    .end local v3    # "numCompatibleSets":I
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v24    # "codecs":Ljava/lang/String;
    :goto_11
    move-object/from16 v14, v24

    const/16 v23, 0x2

    goto/16 :goto_18

    .end local v24    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    :cond_32
    move-object/from16 v24, v14

    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v24    # "codecs":Ljava/lang/String;
    const v3, 0x65736473

    if-eq v2, v3, :cond_3f

    if-eqz p6, :cond_33

    const v12, 0x77617665

    if-ne v2, v12, :cond_33

    const/4 v12, 0x0

    const/16 v23, 0x2

    goto/16 :goto_14

    .line 1949
    :cond_33
    const v3, 0x64616333

    if-ne v2, v3, :cond_34

    .line 1950
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1951
    nop

    .line 1952
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Landroidx/media3/extractor/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    const/4 v12, 0x0

    const/16 v23, 0x2

    goto/16 :goto_13

    .line 1953
    :cond_34
    const v3, 0x64656333

    if-ne v2, v3, :cond_35

    .line 1954
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1955
    nop

    .line 1956
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Landroidx/media3/extractor/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    const/4 v12, 0x0

    const/16 v23, 0x2

    goto/16 :goto_13

    .line 1957
    :cond_35
    const v3, 0x64616334

    if-ne v2, v3, :cond_36

    .line 1958
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1959
    nop

    .line 1960
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Landroidx/media3/extractor/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    const/4 v12, 0x0

    const/16 v23, 0x2

    goto/16 :goto_13

    .line 1961
    :cond_36
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_38

    .line 1962
    if-lez v9, :cond_37

    .line 1967
    move v3, v9

    .line 1971
    .end local v11    # "sampleRate":I
    .local v3, "sampleRate":I
    const/4 v11, 0x2

    move v13, v11

    move-object/from16 v14, v24

    const/16 v23, 0x2

    move v11, v3

    .end local v13    # "channelCount":I
    .local v11, "channelCount":I
    goto/16 :goto_18

    .line 1963
    .end local v3    # "sampleRate":I
    .local v11, "sampleRate":I
    .restart local v13    # "channelCount":I
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    invoke-static {v3, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 1972
    :cond_38
    const/4 v12, 0x0

    const v3, 0x64647473

    if-eq v2, v3, :cond_3e

    const v3, 0x75647473

    if-ne v2, v3, :cond_39

    const/4 v12, 0x0

    const/16 v23, 0x2

    goto/16 :goto_12

    .line 1982
    :cond_39
    const v3, 0x644f7073

    if-ne v2, v3, :cond_3a

    .line 1985
    add-int/lit8 v3, v15, -0x8

    .line 1986
    .local v3, "childAtomBodySize":I
    sget-object v14, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    sget-object v12, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v12, v12

    add-int/2addr v12, v3

    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 1987
    .local v12, "headerBytes":[B
    add-int/lit8 v14, v8, 0x8

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1988
    sget-object v14, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v14, v14

    invoke-virtual {v0, v12, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1989
    invoke-static {v12}, Landroidx/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v1

    .line 1990
    .end local v3    # "childAtomBodySize":I
    .end local v12    # "headerBytes":[B
    move-object/from16 v14, v24

    const/16 v23, 0x2

    goto/16 :goto_18

    :cond_3a
    const v3, 0x64664c61

    if-ne v2, v3, :cond_3b

    .line 1991
    add-int/lit8 v3, v15, -0xc

    .line 1992
    .restart local v3    # "childAtomBodySize":I
    add-int/lit8 v12, v3, 0x4

    new-array v12, v12, [B

    .line 1993
    .local v12, "initializationDataBytes":[B
    const/16 v14, 0x66

    const/16 v19, 0x0

    aput-byte v14, v12, v19

    .line 1994
    const/16 v14, 0x4c

    const/16 v20, 0x1

    aput-byte v14, v12, v20

    .line 1995
    const/16 v14, 0x61

    const/16 v23, 0x2

    aput-byte v14, v12, v23

    .line 1996
    const/4 v14, 0x3

    const/16 v26, 0x43

    aput-byte v26, v12, v14

    .line 1997
    add-int/lit8 v14, v8, 0xc

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1998
    const/4 v14, 0x4

    invoke-virtual {v0, v12, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1999
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2000
    .end local v3    # "childAtomBodySize":I
    .end local v12    # "initializationDataBytes":[B
    move-object/from16 v14, v24

    goto/16 :goto_18

    :cond_3b
    const/4 v14, 0x4

    const/16 v23, 0x2

    const v12, 0x616c6163

    if-ne v2, v12, :cond_3c

    .line 2001
    add-int/lit8 v3, v15, -0xc

    .line 2002
    .restart local v3    # "childAtomBodySize":I
    new-array v12, v3, [B

    .line 2003
    .restart local v12    # "initializationDataBytes":[B
    add-int/lit8 v14, v8, 0xc

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2004
    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2007
    nop

    .line 2008
    invoke-static {v12}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v14

    .line 2009
    .local v14, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move/from16 v26, v3

    .end local v3    # "childAtomBodySize":I
    .local v26, "childAtomBodySize":I
    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2010
    .end local v11    # "sampleRate":I
    .local v3, "sampleRate":I
    iget-object v11, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2011
    .end local v13    # "channelCount":I
    .local v11, "channelCount":I
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2012
    .end local v12    # "initializationDataBytes":[B
    .end local v14    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v26    # "childAtomBodySize":I
    move v13, v11

    move-object/from16 v14, v24

    move v11, v3

    goto/16 :goto_18

    .end local v3    # "sampleRate":I
    .local v11, "sampleRate":I
    .restart local v13    # "channelCount":I
    :cond_3c
    const v3, 0x69616362

    if-ne v2, v3, :cond_3d

    .line 2013
    add-int/lit8 v3, v8, 0x8

    const/4 v12, 0x1

    add-int/2addr v3, v12

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToInt()I

    move-result v3

    .line 2016
    .local v3, "configObusSize":I
    new-array v14, v3, [B

    .line 2017
    .local v14, "initializationDataBytes":[B
    const/4 v12, 0x0

    invoke-virtual {v0, v14, v12, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2018
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v14, v24

    goto/16 :goto_18

    .line 2012
    .end local v3    # "configObusSize":I
    .end local v14    # "initializationDataBytes":[B
    :cond_3d
    const/4 v12, 0x0

    goto :goto_13

    .line 1972
    :cond_3e
    const/4 v12, 0x0

    const/16 v23, 0x2

    .line 1973
    :goto_12
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1975
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 1976
    invoke-virtual {v3, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 1977
    invoke-virtual {v3, v13}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 1978
    invoke-virtual {v3, v11}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 1979
    invoke-virtual {v3, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 1980
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 1981
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 2020
    :goto_13
    move-object/from16 v14, v24

    goto :goto_18

    .line 1921
    :cond_3f
    const/4 v12, 0x0

    const/16 v23, 0x2

    .line 1924
    :goto_14
    if-ne v2, v3, :cond_40

    .line 1925
    move v3, v8

    goto :goto_15

    .line 1926
    :cond_40
    invoke-static {v0, v3, v8, v15}, Landroidx/media3/extractor/mp4/BoxParser;->findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I

    move-result v3

    :goto_15
    nop

    .line 1927
    .local v3, "esdsAtomPosition":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_44

    .line 1928
    invoke-static {v0, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v19

    .line 1929
    .end local v21    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v19, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$900(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v10

    .line 1930
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v21

    .line 1931
    .local v21, "initializationDataBytes":[B
    if-eqz v21, :cond_43

    .line 1932
    const-string v12, "audio/vorbis"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    .line 1933
    nop

    .line 1934
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v14, v24

    goto :goto_17

    .line 1936
    :cond_41
    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    .line 1939
    nop

    .line 1940
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v12

    .line 1941
    .local v12, "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    iget v11, v12, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 1942
    iget v13, v12, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 1943
    iget-object v14, v12, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .end local v24    # "codecs":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    goto :goto_16

    .line 1936
    .end local v12    # "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v24    # "codecs":Ljava/lang/String;
    :cond_42
    move-object/from16 v14, v24

    .line 1945
    .end local v24    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    :goto_16
    invoke-static/range {v21 .. v21}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_17

    .line 1931
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v24    # "codecs":Ljava/lang/String;
    :cond_43
    move-object/from16 v14, v24

    goto :goto_17

    .line 1927
    .end local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v21, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    :cond_44
    move-object/from16 v19, v21

    move-object/from16 v14, v24

    .line 1949
    .end local v3    # "esdsAtomPosition":I
    .end local v21    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .end local v24    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    .restart local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    :goto_17
    move-object/from16 v21, v19

    .line 2020
    .end local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .restart local v21    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    :goto_18
    add-int/2addr v8, v15

    .line 2021
    .end local v2    # "childAtomType":I
    .end local v15    # "childAtomSize":I
    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v15, v21

    move/from16 v12, v25

    goto/16 :goto_d

    .line 2023
    .end local v25    # "pcmEncoding":I
    .local v12, "pcmEncoding":I
    :cond_45
    move/from16 v25, v12

    move-object/from16 v24, v14

    .end local v12    # "pcmEncoding":I
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v24    # "codecs":Ljava/lang/String;
    .restart local v25    # "pcmEncoding":I
    iget-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v2, :cond_47

    if-eqz v10, :cond_47

    .line 2024
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2026
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2027
    invoke-virtual {v2, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2028
    move-object/from16 v14, v24

    .end local v24    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2029
    invoke-virtual {v2, v13}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2030
    invoke-virtual {v2, v11}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2031
    move/from16 v12, v25

    .end local v25    # "pcmEncoding":I
    .restart local v12    # "pcmEncoding":I
    invoke-virtual {v2, v12}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2032
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2033
    invoke-virtual {v2, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2034
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2036
    .local v2, "formatBuilder":Landroidx/media3/common/Format$Builder;
    if-eqz v21, :cond_46

    .line 2037
    nop

    .line 2038
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1200(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 2039
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v15

    invoke-virtual {v3, v15}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 2042
    :cond_46
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_19

    .line 2023
    .end local v2    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v12    # "pcmEncoding":I
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v24    # "codecs":Ljava/lang/String;
    .restart local v25    # "pcmEncoding":I
    :cond_47
    move-object/from16 v14, v24

    move/from16 v12, v25

    .line 2044
    .end local v24    # "codecs":Ljava/lang/String;
    .end local v25    # "pcmEncoding":I
    .restart local v12    # "pcmEncoding":I
    .restart local v14    # "codecs":Ljava/lang/String;
    :goto_19
    return-void
.end method

.method private static parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .locals 23
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1547
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1548
    .local v0, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1549
    .local v1, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 1553
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1554
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 1555
    .local v5, "seqProfile":I
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1556
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 1557
    .local v6, "highBitdepth":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 1558
    .local v7, "twelveBit":Z
    const/16 v8, 0xc

    const/16 v9, 0xa

    const/4 v10, 0x2

    if-ne v5, v10, :cond_2

    if-eqz v6, :cond_2

    .line 1559
    if-eqz v7, :cond_0

    move v11, v8

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1560
    if-eqz v7, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_3

    .line 1561
    :cond_2
    if-gt v5, v10, :cond_5

    .line 1562
    if-eqz v6, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v3

    :goto_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1563
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1567
    :cond_5
    :goto_3
    const/16 v9, 0xd

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1570
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1571
    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 1572
    .local v12, "obuType":I
    const-string v13, "BoxParsers"

    if-eq v12, v2, :cond_6

    .line 1573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported obu_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1576
    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1577
    const-string v2, "Unsupported obu_extension_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1580
    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 1581
    .local v14, "obuHasSizeField":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1583
    if-eqz v14, :cond_8

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    const/16 v9, 0x7f

    if-le v15, v9, :cond_8

    .line 1584
    const-string v2, "Excessive obu_size"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1588
    :cond_8
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 1589
    .local v9, "obuSeqHeaderSeqProfile":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1590
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1591
    const-string v2, "Unsupported reduced_still_picture_header"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1594
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1595
    const-string v2, "Unsupported timing_info_present_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1598
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1599
    const-string v2, "Unsupported initial_display_delay_present_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1602
    :cond_b
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 1603
    .local v15, "operatingPointsCountMinus1":I
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_4
    const/4 v4, 0x7

    if-gt v3, v15, :cond_d

    .line 1604
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1605
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1606
    .local v8, "seqLevelIdx":I
    if-le v8, v4, :cond_c

    .line 1607
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1603
    .end local v8    # "seqLevelIdx":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    const/16 v8, 0xc

    goto :goto_4

    .line 1610
    .end local v3    # "i":I
    :cond_d
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1611
    .local v3, "frameWidthBitsMinus1":I
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1612
    .local v8, "frameHeightBitsMinus1":I
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1613
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1614
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1615
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1617
    :cond_e
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1618
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 1619
    .local v4, "enableOrderHint":Z
    if-eqz v4, :cond_f

    .line 1620
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1623
    :cond_f
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1624
    move v11, v10

    goto :goto_5

    .line 1625
    :cond_10
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    :goto_5
    nop

    .line 1626
    .local v11, "seqForceScreenContentTools":I
    if-lez v11, :cond_11

    .line 1627
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_11

    .line 1628
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1631
    :cond_11
    if-eqz v4, :cond_12

    .line 1632
    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 1631
    :cond_12
    const/4 v13, 0x3

    .line 1634
    :goto_6
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1636
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 1637
    .local v13, "colorConfigHighBitdepth":Z
    if-ne v9, v10, :cond_13

    if-eqz v13, :cond_13

    .line 1638
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1641
    :cond_13
    if-eq v9, v2, :cond_14

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_14

    move/from16 v17, v2

    goto :goto_7

    :cond_14
    const/16 v17, 0x0

    .line 1643
    .local v17, "monochrome":Z
    :goto_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1644
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 1645
    .local v2, "colorPrimaries":I
    move/from16 v20, v3

    .end local v3    # "frameWidthBitsMinus1":I
    .local v20, "frameWidthBitsMinus1":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1646
    .local v3, "transferCharacteristics":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 1648
    .local v10, "matrixCoefficients":I
    if-nez v17, :cond_15

    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "enableOrderHint":Z
    .local v21, "enableOrderHint":Z
    if-ne v2, v4, :cond_16

    const/16 v4, 0xd

    if-ne v3, v4, :cond_16

    if-nez v10, :cond_16

    .line 1652
    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_8

    .line 1648
    .end local v21    # "enableOrderHint":Z
    .restart local v4    # "enableOrderHint":Z
    :cond_15
    move/from16 v21, v4

    .line 1653
    .end local v4    # "enableOrderHint":Z
    .restart local v21    # "enableOrderHint":Z
    :cond_16
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    :goto_8
    move/from16 v18, v16

    .line 1654
    .local v18, "colorRange":I
    nop

    .line 1655
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    .line 1656
    move-object/from16 v22, v1

    move/from16 v16, v2

    move/from16 v1, v18

    const/4 v2, 0x1

    .end local v2    # "colorPrimaries":I
    .end local v18    # "colorRange":I
    .local v1, "colorRange":I
    .local v16, "colorPrimaries":I
    .local v22, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    if-ne v1, v2, :cond_17

    goto :goto_9

    :cond_17
    const/4 v2, 0x2

    :goto_9
    invoke-virtual {v4, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v2

    .line 1658
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    .line 1657
    invoke-virtual {v2, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_a

    .line 1643
    .end local v10    # "matrixCoefficients":I
    .end local v16    # "colorPrimaries":I
    .end local v20    # "frameWidthBitsMinus1":I
    .end local v21    # "enableOrderHint":Z
    .end local v22    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .local v1, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .local v3, "frameWidthBitsMinus1":I
    .restart local v4    # "enableOrderHint":Z
    :cond_18
    move-object/from16 v22, v1

    move/from16 v20, v3

    move/from16 v21, v4

    .line 1660
    .end local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v3    # "frameWidthBitsMinus1":I
    .end local v4    # "enableOrderHint":Z
    .restart local v20    # "frameWidthBitsMinus1":I
    .restart local v21    # "enableOrderHint":Z
    .restart local v22    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    :goto_a
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    return-object v1
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2208
    add-int/lit8 v0, p1, 0x8

    .line 2209
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 2210
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 2211
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 2212
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2213
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3

    .line 2214
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2215
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 2216
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 2217
    .local v6, "childAtomType":I
    const v7, 0x66726d61

    if-ne v6, v7, :cond_0

    .line 2218
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 2219
    :cond_0
    const v7, 0x7363686d

    if-ne v6, v7, :cond_1

    .line 2220
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2222
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2223
    :cond_1
    const v7, 0x73636869

    if-ne v6, v7, :cond_2

    .line 2224
    move v1, v0

    .line 2225
    move v2, v5

    .line 2227
    :cond_2
    :goto_1
    add-int/2addr v0, v5

    .line 2228
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 2230
    :cond_3
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2231
    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2232
    const-string v5, "cens"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2233
    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2244
    :cond_4
    const/4 v5, 0x0

    return-object v5

    .line 2234
    :cond_5
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2235
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    move v7, v5

    goto :goto_4

    :cond_7
    move v7, v6

    :goto_4
    const-string/jumbo v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2238
    nop

    .line 2239
    invoke-static {p0, v1, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 2241
    .local v7, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :goto_5
    const-string/jumbo v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2242
    invoke-static {v7}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;
    .locals 11
    .param p0, "edtsAtom"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1691
    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    .line 1692
    .local v0, "elstAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-nez v0, :cond_0

    .line 1693
    const/4 v1, 0x0

    return-object v1

    .line 1695
    :cond_0
    iget-object v1, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1696
    .local v1, "elstData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1697
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1698
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    .line 1699
    .local v3, "version":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1700
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 1701
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 1702
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 1703
    nop

    .line 1704
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_1
    aput-wide v9, v5, v7

    .line 1705
    if-ne v3, v8, :cond_2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_2
    aput-wide v9, v6, v7

    .line 1706
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 1707
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_3

    .line 1711
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1702
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1709
    .restart local v9    # "mediaRateInteger":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1713
    .end local v7    # "i":I
    .end local v9    # "mediaRateInteger":I
    :cond_4
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7
.end method

.method private static parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .locals 20
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 2078
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2080
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2081
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 2082
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2084
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 2085
    .local v4, "flags":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_0

    .line 2086
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2088
    :cond_0
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_1

    .line 2089
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2091
    :cond_1
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_2

    .line 2092
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2096
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2097
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 2101
    .local v3, "objectTypeIndication":I
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v12

    .line 2102
    .local v12, "mimeType":Ljava/lang/String;
    const-string v5, "audio/mpeg"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2103
    const-string v5, "audio/vnd.dts"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2104
    const-string v5, "audio/vnd.dts.hd"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 2112
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 2114
    .local v13, "peakBitrate":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    .line 2117
    .local v15, "bitrate":J
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2118
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v1

    .line 2119
    .local v1, "initializationDataSize":I
    new-array v2, v1, [B

    .line 2120
    .local v2, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2123
    new-instance v17, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2126
    const-wide/16 v5, 0x0

    cmp-long v7, v15, v5

    const-wide/16 v8, -0x1

    if-lez v7, :cond_4

    move-wide v10, v15

    goto :goto_0

    :cond_4
    move-wide v10, v8

    .line 2127
    :goto_0
    cmp-long v5, v13, v5

    if-lez v5, :cond_5

    move-wide/from16 v18, v13

    goto :goto_1

    :cond_5
    move-wide/from16 v18, v8

    :goto_1
    move-object/from16 v5, v17

    move-object v6, v12

    move-object v7, v2

    move-wide v8, v10

    move-wide/from16 v10, v18

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 2123
    return-object v17

    .line 2105
    .end local v1    # "initializationDataSize":I
    .end local v2    # "initializationData":[B
    .end local v13    # "peakBitrate":J
    .end local v15    # "bitrate":J
    :cond_6
    :goto_2
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    move-object v5, v1

    move-object v6, v12

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method private static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 2311
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2312
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 2313
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 2314
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2315
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 2317
    :cond_0
    return v1
.end method

.method public static parseFullBoxFlags(I)I
    .locals 1
    .param p0, "fullBoxInt"    # I

    .line 117
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static parseFullBoxVersion(I)I
    .locals 1
    .param p0, "fullBoxInt"    # I

    .line 112
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 930
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 931
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 2
    .param p0, "ilst"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 831
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 834
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    .line 835
    .local v1, "entry":Landroidx/media3/common/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 836
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    .end local v1    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_0
    goto :goto_0

    .line 839
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1
.end method

.method private static parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
    .locals 19
    .param p0, "mdhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 956
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 958
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    .line 959
    .local v3, "version":I
    if-nez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/16 v4, 0x10

    :goto_0
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 960
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    .line 961
    .local v11, "timescale":J
    const/4 v4, 0x1

    .line 962
    .local v4, "mediaDurationUnknown":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 963
    .local v13, "mediaDurationPosition":I
    if-nez v3, :cond_1

    const/4 v1, 0x4

    .line 964
    .local v1, "mediaDurationByteCount":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 965
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    add-int v7, v13, v5

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 966
    const/4 v4, 0x0

    .line 967
    goto :goto_2

    .line 964
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 971
    .end local v5    # "i":I
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 972
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 973
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v5

    .local v5, "mediaDurationUs":J
    goto :goto_4

    .line 975
    .end local v5    # "mediaDurationUs":J
    :cond_4
    if-nez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    :goto_3
    move-wide v14, v5

    .line 976
    .local v14, "mediaDuration":J
    const-wide/16 v5, 0x0

    cmp-long v5, v14, v5

    if-nez v5, :cond_6

    .line 979
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v5

    .restart local v5    # "mediaDurationUs":J
    goto :goto_4

    .line 981
    .end local v5    # "mediaDurationUs":J
    :cond_6
    const-wide/32 v7, 0xf4240

    move-wide v5, v14

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    move-wide v14, v5

    .line 984
    .local v14, "mediaDurationUs":J
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v16

    .line 985
    .local v16, "languageCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v16, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v16, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v16, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 990
    .local v17, "language":Ljava/lang/String;
    new-instance v18, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-object/from16 v5, v18

    move-wide v6, v11

    move-wide v8, v14

    move-object/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;-><init>(JJLjava/lang/String;)V

    return-object v18
.end method

.method public static parseMdtaFromMeta(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;
    .locals 15
    .param p0, "meta"    # Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 237
    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    .line 238
    .local v0, "hdlrAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    .line 239
    .local v1, "keysAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    .line 240
    .local v2, "ilstAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v4, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 243
    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    const v5, 0x6d647461

    if-eq v4, v5, :cond_0

    goto/16 :goto_4

    .line 249
    :cond_0
    iget-object v4, v1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 250
    .local v4, "keys":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 251
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 252
    .local v5, "entryCount":I
    new-array v6, v5, [Ljava/lang/String;

    .line 253
    .local v6, "keyNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 254
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 255
    .local v8, "entrySize":I
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 256
    add-int/lit8 v9, v8, -0x8

    .line 257
    .local v9, "keySize":I
    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    .line 253
    .end local v8    # "entrySize":I
    .end local v9    # "keySize":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 261
    .end local v7    # "i":I
    :cond_1
    iget-object v7, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 262
    .local v7, "ilst":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 263
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :goto_1
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-le v10, v8, :cond_4

    .line 265
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 266
    .local v10, "atomPosition":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 267
    .local v11, "atomSize":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 268
    .local v12, "keyIndex":I
    if-ltz v12, :cond_3

    array-length v13, v6

    if-ge v12, v13, :cond_3

    .line 269
    aget-object v13, v6, v12

    .line 271
    .local v13, "key":Ljava/lang/String;
    add-int v14, v10, v11

    .line 272
    invoke-static {v7, v14, v13}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v14

    .line 273
    .local v14, "entry":Landroidx/media3/common/Metadata$Entry;
    if-eqz v14, :cond_2

    .line 274
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_2
    goto :goto_2

    .line 277
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipped metadata with unknown key index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BoxParsers"

    invoke-static {v14, v13}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_2
    add-int v13, v10, v11

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 280
    .end local v10    # "atomPosition":I
    .end local v11    # "atomSize":I
    .end local v12    # "keyIndex":I
    goto :goto_1

    .line 281
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Landroidx/media3/common/Metadata;

    invoke-direct {v3, v9}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v3

    .line 245
    .end local v4    # "keys":Landroidx/media3/common/util/ParsableByteArray;
    .end local v5    # "entryCount":I
    .end local v6    # "keyNames":[Ljava/lang/String;
    .end local v7    # "ilst":Landroidx/media3/common/util/ParsableByteArray;
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :cond_6
    :goto_4
    return-object v3
.end method

.method private static parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$StsdData;)V
    .locals 2
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "trackId"    # I
    .param p4, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    .line 1672
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1673
    const v0, 0x6d657474

    if-ne p1, v0, :cond_0

    .line 1674
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1675
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1677
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v1, p3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 1680
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 17
    .param p0, "mvhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 212
    const/16 v0, 0x8

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 214
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    .line 217
    .local v2, "version":I
    if-nez v2, :cond_0

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 219
    .local v3, "creationTimestampSeconds":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .local v5, "modificationTimestampSeconds":J
    goto :goto_0

    .line 221
    .end local v3    # "creationTimestampSeconds":J
    .end local v5    # "modificationTimestampSeconds":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    .line 222
    .restart local v3    # "creationTimestampSeconds":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v5

    .line 225
    .restart local v5    # "modificationTimestampSeconds":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 226
    .local v14, "timescale":J
    new-instance v16, Landroidx/media3/container/Mp4TimestampData;

    move-object/from16 v7, v16

    move-wide v8, v3

    move-wide v10, v5

    move-wide v12, v14

    invoke-direct/range {v7 .. v13}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object v16
.end method

.method private static parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 1717
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1718
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1719
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1720
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 2296
    add-int/lit8 v0, p1, 0x8

    .line 2297
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 2298
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2299
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2300
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2301
    .local v2, "childAtomType":I
    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 2302
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 2304
    :cond_0
    add-int/2addr v0, v1

    .line 2305
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 2306
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2186
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2187
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 2188
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2189
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2190
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2191
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2192
    .local v2, "childAtomType":I
    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 2194
    nop

    .line 2195
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 2196
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 2197
    return-object v3

    .line 2200
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    add-int/2addr v0, v1

    .line 2201
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 2202
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 22
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 2251
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 2252
    .local v1, "childPosition":I
    :goto_0
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_4

    .line 2253
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2254
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2255
    .local v2, "childAtomSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 2256
    .local v4, "childAtomType":I
    const v5, 0x74656e63

    if-ne v4, v5, :cond_3

    .line 2257
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 2258
    .local v5, "fullAtom":I
    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v6

    .line 2259
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2260
    const/4 v8, 0x0

    .line 2261
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 2262
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_0

    .line 2263
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 2265
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 2266
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 2267
    and-int/lit8 v9, v10, 0xf

    .line 2269
    .end local v10    # "patternByte":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v11

    .line 2270
    .local v7, "defaultIsProtected":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 2271
    .local v10, "defaultPerSampleIvSize":I
    const/16 v12, 0x10

    new-array v15, v12, [B

    .line 2272
    .local v15, "defaultKeyId":[B
    array-length v12, v15

    invoke-virtual {v0, v15, v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2273
    const/4 v12, 0x0

    .line 2274
    .local v12, "constantIv":[B
    if-eqz v7, :cond_2

    if-nez v10, :cond_2

    .line 2275
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 2276
    .local v13, "constantIvSize":I
    new-array v12, v13, [B

    .line 2277
    invoke-virtual {v0, v12, v11, v13}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v12

    goto :goto_3

    .line 2279
    .end local v13    # "constantIvSize":I
    :cond_2
    move-object/from16 v19, v12

    .end local v12    # "constantIv":[B
    .local v19, "constantIv":[B
    :goto_3
    new-instance v20, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v11, v20

    move v12, v7

    move-object/from16 v13, p3

    move v14, v10

    move-object/from16 v21, v15

    .end local v15    # "defaultKeyId":[B
    .local v21, "defaultKeyId":[B
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v20

    .line 2288
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v7    # "defaultIsProtected":Z
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "defaultPerSampleIvSize":I
    .end local v19    # "constantIv":[B
    .end local v21    # "defaultKeyId":[B
    :cond_3
    add-int/2addr v1, v2

    .line 2289
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 2290
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public static parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;
    .locals 80
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;
    .param p1, "stblBox"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p2, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 410
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const v0, 0x7374737a

    invoke-virtual {v10, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v12

    .line 411
    .local v12, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v12, :cond_0

    .line 412
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;

    iget-object v2, v9, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-direct {v1, v12, v2}, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V

    move-object v13, v1

    .local v1, "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    goto :goto_0

    .line 414
    .end local v1    # "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    :cond_0
    const v1, 0x73747a32

    invoke-virtual {v10, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    .line 415
    .local v1, "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v1, :cond_36

    .line 419
    new-instance v2, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;)V

    move-object v13, v2

    .line 422
    .end local v1    # "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v13, "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    :goto_0
    invoke-interface {v13}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getSampleCount()I

    move-result v14

    .line 423
    .local v14, "sampleCount":I
    const/4 v1, 0x0

    if-nez v14, :cond_1

    .line 424
    new-instance v15, Landroidx/media3/extractor/mp4/TrackSampleTable;

    new-array v2, v1, [J

    new-array v3, v1, [I

    new-array v5, v1, [J

    new-array v6, v1, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v15

    .line 434
    :cond_1
    iget v2, v9, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_2

    iget-wide v6, v9, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_2

    .line 435
    int-to-float v2, v14

    iget-wide v6, v9, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    long-to-float v6, v6

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    div-float/2addr v2, v6

    .line 436
    .local v2, "frameRate":F
    iget-object v6, v9, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    .line 437
    .local v6, "format":Landroidx/media3/common/Format;
    invoke-virtual {v9, v6}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v7

    .end local p0    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v7, "track":Landroidx/media3/extractor/mp4/Track;
    goto :goto_1

    .line 441
    .end local v2    # "frameRate":F
    .end local v6    # "format":Landroidx/media3/common/Format;
    .end local v7    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local p0    # "track":Landroidx/media3/extractor/mp4/Track;
    :cond_2
    move-object v7, v9

    .end local p0    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v7    # "track":Landroidx/media3/extractor/mp4/Track;
    :goto_1
    const/4 v2, 0x0

    .line 442
    .local v2, "chunkOffsetsAreLongs":Z
    const v6, 0x7374636f

    invoke-virtual {v10, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    .line 443
    .local v6, "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-nez v6, :cond_3

    .line 444
    const/4 v2, 0x1

    .line 445
    const v8, 0x636f3634

    invoke-virtual {v10, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 447
    :cond_3
    iget-object v8, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 449
    .local v8, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    const v9, 0x73747363

    invoke-virtual {v10, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 451
    .local v9, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    const v15, 0x73747473

    invoke-virtual {v10, v15}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v15

    invoke-static {v15}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 453
    .local v15, "stts":Landroidx/media3/common/util/ParsableByteArray;
    const v0, 0x73747373

    invoke-virtual {v10, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    .line 454
    .local v0, "stssAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v0, :cond_4

    iget-object v4, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 456
    .local v4, "stss":Landroidx/media3/common/util/ParsableByteArray;
    :goto_2
    const v5, 0x63747473

    invoke-virtual {v10, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v5

    .line 457
    .local v5, "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v5, :cond_5

    iget-object v1, v5, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v16, v1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v1, v16

    .line 460
    .local v1, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    new-instance v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v3, v9, v8, v2}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 463
    .local v3, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    move-object/from16 p0, v0

    .end local v0    # "stssAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local p0, "stssAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const/16 v0, 0xc

    invoke-virtual {v15, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 464
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    const/4 v0, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 465
    .local v16, "remainingTimestampDeltaChanges":I
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    .line 466
    .local v22, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 469
    .local v0, "timestampDeltaInTimeUnits":I
    const/16 v24, 0x0

    .line 470
    .local v24, "remainingSamplesAtTimestampOffset":I
    const/16 v25, 0x0

    .line 471
    .local v25, "remainingTimestampOffsetChanges":I
    const/16 v26, 0x0

    .line 472
    .local v26, "timestampOffset":I
    if-eqz v1, :cond_6

    .line 473
    move/from16 v27, v2

    const/16 v2, 0xc

    .end local v2    # "chunkOffsetsAreLongs":Z
    .local v27, "chunkOffsetsAreLongs":Z
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 474
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v25

    goto :goto_4

    .line 472
    .end local v27    # "chunkOffsetsAreLongs":Z
    .restart local v2    # "chunkOffsetsAreLongs":Z
    :cond_6
    move/from16 v27, v2

    .line 477
    .end local v2    # "chunkOffsetsAreLongs":Z
    .restart local v27    # "chunkOffsetsAreLongs":Z
    :goto_4
    const/4 v2, -0x1

    .line 478
    .local v2, "nextSynchronizationSampleIndex":I
    const/16 v28, 0x0

    .line 479
    .local v28, "remainingSynchronizationSamples":I
    if-eqz v4, :cond_8

    .line 480
    move/from16 v29, v2

    const/16 v2, 0xc

    .end local v2    # "nextSynchronizationSampleIndex":I
    .local v29, "nextSynchronizationSampleIndex":I
    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 481
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v28

    .line 482
    if-lez v28, :cond_7

    .line 483
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    const/16 v21, 0x1

    add-int/lit8 v2, v2, -0x1

    .end local v29    # "nextSynchronizationSampleIndex":I
    .restart local v2    # "nextSynchronizationSampleIndex":I
    goto :goto_5

    .line 486
    .end local v2    # "nextSynchronizationSampleIndex":I
    .restart local v29    # "nextSynchronizationSampleIndex":I
    :cond_7
    const/4 v4, 0x0

    move/from16 v2, v29

    goto :goto_5

    .line 479
    .end local v29    # "nextSynchronizationSampleIndex":I
    .restart local v2    # "nextSynchronizationSampleIndex":I
    :cond_8
    move/from16 v29, v2

    .line 491
    :goto_5
    move/from16 v21, v2

    .end local v2    # "nextSynchronizationSampleIndex":I
    .local v21, "nextSynchronizationSampleIndex":I
    invoke-interface {v13}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getFixedSampleSize()I

    move-result v2

    .line 492
    .local v2, "fixedSampleSize":I
    move-object/from16 v29, v5

    .end local v5    # "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v29, "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget-object v5, v7, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 493
    .local v5, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v30, v6

    .end local v6    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v30, "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    .line 495
    const-string v6, "audio/raw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 496
    const-string v6, "audio/g711-mlaw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 497
    const-string v6, "audio/g711-alaw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    if-nez v16, :cond_a

    if-nez v25, :cond_a

    if-nez v28, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    .line 504
    .local v6, "rechunkFixedSizeSamples":Z
    :goto_6
    const/16 v31, 0x0

    .line 507
    .local v31, "maximumSize":I
    const-wide/16 v32, 0x0

    .line 510
    .local v32, "timestampTimeUnits":J
    if-eqz v6, :cond_c

    .line 511
    move-object/from16 v34, v5

    .end local v5    # "sampleMimeType":Ljava/lang/String;
    .local v34, "sampleMimeType":Ljava/lang/String;
    iget v5, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v5, v5, [J

    .line 512
    .local v5, "chunkOffsetsBytes":[J
    move/from16 v35, v6

    .end local v6    # "rechunkFixedSizeSamples":Z
    .local v35, "rechunkFixedSizeSamples":Z
    iget v6, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v6, v6, [I

    .line 513
    .local v6, "chunkSampleCounts":[I
    :goto_7
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v36

    if-eqz v36, :cond_b

    .line 514
    move-object/from16 v36, v8

    .end local v8    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .local v36, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    iget v8, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    move-object/from16 v37, v9

    .end local v9    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .local v37, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    iget-wide v9, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    aput-wide v9, v5, v8

    .line 515
    iget v8, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v9, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    aput v9, v6, v8

    move-object/from16 v10, p1

    move-object/from16 v8, v36

    move-object/from16 v9, v37

    goto :goto_7

    .line 517
    .end local v36    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v37    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v8    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v9    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    :cond_b
    move-object/from16 v36, v8

    move-object/from16 v37, v9

    .end local v8    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v9    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v36    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v37    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    int-to-long v8, v0

    .line 518
    invoke-static {v2, v5, v6, v8, v9}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v8

    .line 520
    .local v8, "rechunkedResults":Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    iget-object v9, v8, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 521
    .local v9, "offsets":[J
    iget-object v10, v8, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 522
    .local v10, "sizes":[I
    move/from16 v38, v0

    .end local v0    # "timestampDeltaInTimeUnits":I
    .local v38, "timestampDeltaInTimeUnits":I
    iget v0, v8, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 523
    .end local v31    # "maximumSize":I
    .local v0, "maximumSize":I
    move/from16 v31, v0

    .end local v0    # "maximumSize":I
    .restart local v31    # "maximumSize":I
    iget-object v0, v8, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 524
    .local v0, "timestamps":[J
    move-object/from16 v39, v0

    .end local v0    # "timestamps":[J
    .local v39, "timestamps":[J
    iget-object v0, v8, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 525
    .local v0, "flags":[I
    iget-wide v5, v8, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 526
    .end local v6    # "chunkSampleCounts":[I
    .end local v8    # "rechunkedResults":Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    .local v5, "duration":J
    move-object v8, v0

    move-object/from16 v41, v1

    move-object v11, v4

    move-object v1, v7

    move/from16 v4, v16

    move/from16 v7, v22

    move/from16 v40, v24

    move-wide/from16 v54, v32

    move-object/from16 v0, v39

    move/from16 v24, v2

    move/from16 v2, v21

    move/from16 v32, v28

    move/from16 v28, v26

    move/from16 v26, v25

    move-object/from16 v25, v12

    move-object v12, v3

    move-object v3, v9

    move/from16 v9, v38

    move-object/from16 v38, v15

    goto/16 :goto_15

    .line 527
    .end local v10    # "sizes":[I
    .end local v34    # "sampleMimeType":Ljava/lang/String;
    .end local v35    # "rechunkFixedSizeSamples":Z
    .end local v36    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v37    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .end local v38    # "timestampDeltaInTimeUnits":I
    .end local v39    # "timestamps":[J
    .local v0, "timestampDeltaInTimeUnits":I
    .local v5, "sampleMimeType":Ljava/lang/String;
    .local v6, "rechunkFixedSizeSamples":Z
    .local v8, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .local v9, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    :cond_c
    move/from16 v38, v0

    move-object/from16 v34, v5

    move/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    .end local v0    # "timestampDeltaInTimeUnits":I
    .end local v5    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "rechunkFixedSizeSamples":Z
    .end local v8    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v9    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v34    # "sampleMimeType":Ljava/lang/String;
    .restart local v35    # "rechunkFixedSizeSamples":Z
    .restart local v36    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v37    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v38    # "timestampDeltaInTimeUnits":I
    new-array v0, v14, [J

    .line 528
    .local v0, "offsets":[J
    new-array v5, v14, [I

    .line 529
    .local v5, "sizes":[I
    new-array v6, v14, [J

    .line 530
    .local v6, "timestamps":[J
    new-array v8, v14, [I

    .line 531
    .local v8, "flags":[I
    const-wide/16 v9, 0x0

    .line 532
    .local v9, "offset":J
    const/16 v39, 0x0

    .line 534
    .local v39, "remainingSamplesInChunk":I
    const/16 v40, 0x0

    move/from16 v11, v28

    move/from16 v28, v24

    move/from16 v24, v2

    move/from16 v2, v16

    move/from16 v16, v25

    move-object/from16 v25, v12

    move/from16 v12, v22

    move/from16 v76, v26

    move-object/from16 v26, v7

    move/from16 v7, v31

    move/from16 v31, v76

    move/from16 v77, v38

    move-object/from16 v38, v15

    move/from16 v15, v40

    move-wide/from16 v78, v9

    move/from16 v10, v21

    move-wide/from16 v21, v78

    move/from16 v9, v77

    .end local v22    # "remainingSamplesAtTimestampDelta":I
    .local v2, "remainingTimestampDeltaChanges":I
    .local v7, "maximumSize":I
    .local v9, "timestampDeltaInTimeUnits":I
    .local v10, "nextSynchronizationSampleIndex":I
    .local v11, "remainingSynchronizationSamples":I
    .local v12, "remainingSamplesAtTimestampDelta":I
    .local v15, "i":I
    .local v16, "remainingTimestampOffsetChanges":I
    .local v21, "offset":J
    .local v24, "fixedSampleSize":I
    .local v25, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v26, "track":Landroidx/media3/extractor/mp4/Track;
    .local v28, "remainingSamplesAtTimestampOffset":I
    .local v31, "timestampOffset":I
    .local v38, "stts":Landroidx/media3/common/util/ParsableByteArray;
    :goto_8
    move/from16 v40, v2

    .end local v2    # "remainingTimestampDeltaChanges":I
    .local v40, "remainingTimestampDeltaChanges":I
    const-string v2, "BoxParsers"

    if-ge v15, v14, :cond_16

    .line 536
    const/16 v41, 0x1

    .line 537
    .local v41, "chunkDataComplete":Z
    :goto_9
    if-nez v39, :cond_d

    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v42

    move/from16 v41, v42

    if-eqz v42, :cond_d

    .line 538
    move/from16 v43, v11

    move/from16 v42, v12

    .end local v11    # "remainingSynchronizationSamples":I
    .end local v12    # "remainingSamplesAtTimestampDelta":I
    .local v42, "remainingSamplesAtTimestampDelta":I
    .local v43, "remainingSynchronizationSamples":I
    iget-wide v11, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    .line 539
    .end local v21    # "offset":J
    .local v11, "offset":J
    move-wide/from16 v21, v11

    .end local v11    # "offset":J
    .restart local v21    # "offset":J
    iget v11, v3, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    move/from16 v39, v11

    move/from16 v12, v42

    move/from16 v11, v43

    .end local v39    # "remainingSamplesInChunk":I
    .local v11, "remainingSamplesInChunk":I
    goto :goto_9

    .line 537
    .end local v42    # "remainingSamplesAtTimestampDelta":I
    .end local v43    # "remainingSynchronizationSamples":I
    .local v11, "remainingSynchronizationSamples":I
    .restart local v12    # "remainingSamplesAtTimestampDelta":I
    .restart local v39    # "remainingSamplesInChunk":I
    :cond_d
    move/from16 v43, v11

    move/from16 v42, v12

    .line 541
    .end local v11    # "remainingSynchronizationSamples":I
    .end local v12    # "remainingSamplesAtTimestampDelta":I
    .restart local v42    # "remainingSamplesAtTimestampDelta":I
    .restart local v43    # "remainingSynchronizationSamples":I
    if-nez v41, :cond_e

    .line 542
    const-string v11, "Unexpected end of chunk data"

    invoke-static {v2, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    move v11, v15

    .line 544
    .end local v14    # "sampleCount":I
    .local v11, "sampleCount":I
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 545
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 546
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 547
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 548
    move-object/from16 v44, v0

    move-object v12, v3

    move-object v0, v6

    move v14, v11

    move/from16 v3, v39

    goto/16 :goto_f

    .line 552
    .end local v11    # "sampleCount":I
    .restart local v14    # "sampleCount":I
    :cond_e
    if-eqz v1, :cond_10

    move/from16 v11, v28

    .line 553
    .end local v28    # "remainingSamplesAtTimestampOffset":I
    .local v11, "remainingSamplesAtTimestampOffset":I
    :goto_a
    if-nez v11, :cond_f

    if-lez v16, :cond_f

    .line 554
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 560
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v31

    .line 561
    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    .line 563
    :cond_f
    add-int/lit8 v11, v11, -0x1

    move/from16 v28, v11

    move/from16 v2, v31

    goto :goto_b

    .line 552
    .end local v11    # "remainingSamplesAtTimestampOffset":I
    .restart local v28    # "remainingSamplesAtTimestampOffset":I
    :cond_10
    move/from16 v2, v31

    .line 566
    .end local v31    # "timestampOffset":I
    .local v2, "timestampOffset":I
    :goto_b
    aput-wide v21, v0, v15

    .line 567
    invoke-interface {v13}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->readNextSampleSize()I

    move-result v11

    aput v11, v5, v15

    .line 568
    aget v11, v5, v15

    if-le v11, v7, :cond_11

    .line 569
    aget v7, v5, v15

    .line 571
    :cond_11
    int-to-long v11, v2

    add-long v11, v32, v11

    aput-wide v11, v6, v15

    .line 574
    if-nez v4, :cond_12

    const/4 v11, 0x1

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    aput v11, v8, v15

    .line 575
    if-ne v15, v10, :cond_14

    .line 576
    const/4 v11, 0x1

    aput v11, v8, v15

    .line 577
    add-int/lit8 v12, v43, -0x1

    .line 578
    .end local v43    # "remainingSynchronizationSamples":I
    .local v12, "remainingSynchronizationSamples":I
    if-lez v12, :cond_13

    .line 579
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual/range {v23 .. v23}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    add-int/lit8 v10, v23, -0x1

    move v11, v12

    goto :goto_d

    .line 578
    :cond_13
    move v11, v12

    goto :goto_d

    .line 575
    .end local v12    # "remainingSynchronizationSamples":I
    .restart local v43    # "remainingSynchronizationSamples":I
    :cond_14
    move/from16 v11, v43

    .line 584
    .end local v43    # "remainingSynchronizationSamples":I
    .local v11, "remainingSynchronizationSamples":I
    :goto_d
    move/from16 v31, v2

    move-object v12, v3

    .end local v2    # "timestampOffset":I
    .end local v3    # "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .local v12, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .restart local v31    # "timestampOffset":I
    int-to-long v2, v9

    add-long v32, v32, v2

    .line 585
    add-int/lit8 v2, v42, -0x1

    .line 586
    .end local v42    # "remainingSamplesAtTimestampDelta":I
    .local v2, "remainingSamplesAtTimestampDelta":I
    if-nez v2, :cond_15

    if-lez v40, :cond_15

    .line 587
    invoke-virtual/range {v38 .. v38}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 594
    invoke-virtual/range {v38 .. v38}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 595
    add-int/lit8 v3, v40, -0x1

    move/from16 v76, v3

    move v3, v2

    move/from16 v2, v76

    .end local v40    # "remainingTimestampDeltaChanges":I
    .local v3, "remainingTimestampDeltaChanges":I
    goto :goto_e

    .line 598
    .end local v3    # "remainingTimestampDeltaChanges":I
    .restart local v40    # "remainingTimestampDeltaChanges":I
    :cond_15
    move v3, v2

    move/from16 v2, v40

    .end local v40    # "remainingTimestampDeltaChanges":I
    .local v2, "remainingTimestampDeltaChanges":I
    .local v3, "remainingSamplesAtTimestampDelta":I
    :goto_e
    move-object/from16 v44, v0

    .end local v0    # "offsets":[J
    .local v44, "offsets":[J
    aget v0, v5, v15

    move/from16 v40, v2

    move/from16 v42, v3

    .end local v2    # "remainingTimestampDeltaChanges":I
    .end local v3    # "remainingSamplesAtTimestampDelta":I
    .restart local v40    # "remainingTimestampDeltaChanges":I
    .restart local v42    # "remainingSamplesAtTimestampDelta":I
    int-to-long v2, v0

    add-long v21, v21, v2

    .line 599
    nop

    .end local v41    # "chunkDataComplete":Z
    add-int/lit8 v39, v39, -0x1

    .line 534
    add-int/lit8 v15, v15, 0x1

    move-object v3, v12

    move/from16 v2, v40

    move/from16 v12, v42

    move-object/from16 v0, v44

    goto/16 :goto_8

    .end local v42    # "remainingSamplesAtTimestampDelta":I
    .end local v44    # "offsets":[J
    .restart local v0    # "offsets":[J
    .local v3, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .local v12, "remainingSamplesAtTimestampDelta":I
    :cond_16
    move-object/from16 v44, v0

    move/from16 v43, v11

    move/from16 v42, v12

    move-object v12, v3

    .end local v0    # "offsets":[J
    .end local v3    # "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .end local v11    # "remainingSynchronizationSamples":I
    .local v12, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .restart local v42    # "remainingSamplesAtTimestampDelta":I
    .restart local v43    # "remainingSynchronizationSamples":I
    .restart local v44    # "offsets":[J
    move-object v0, v6

    move/from16 v3, v39

    .line 601
    .end local v6    # "timestamps":[J
    .end local v15    # "i":I
    .end local v39    # "remainingSamplesInChunk":I
    .local v0, "timestamps":[J
    .local v3, "remainingSamplesInChunk":I
    :goto_f
    move-object v11, v4

    move-object v15, v5

    move/from16 v6, v31

    .end local v4    # "stss":Landroidx/media3/common/util/ParsableByteArray;
    .end local v5    # "sizes":[I
    .end local v31    # "timestampOffset":I
    .local v6, "timestampOffset":I
    .local v11, "stss":Landroidx/media3/common/util/ParsableByteArray;
    .local v15, "sizes":[I
    int-to-long v4, v6

    add-long v4, v32, v4

    .line 605
    .local v4, "duration":J
    const/16 v31, 0x1

    .line 606
    .local v31, "isCttsValid":Z
    if-eqz v1, :cond_18

    .line 607
    :goto_10
    if-lez v16, :cond_18

    .line 608
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v39

    if-eqz v39, :cond_17

    .line 609
    const/16 v31, 0x0

    .line 610
    goto :goto_11

    .line 612
    :cond_17
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 613
    add-int/lit8 v16, v16, -0x1

    goto :goto_10

    .line 616
    :cond_18
    :goto_11
    if-nez v43, :cond_1a

    if-nez v42, :cond_1a

    if-nez v3, :cond_1a

    if-nez v40, :cond_1a

    if-nez v28, :cond_1a

    if-nez v31, :cond_19

    goto :goto_12

    :cond_19
    move-object/from16 v39, v0

    move-object/from16 v41, v1

    move-wide/from16 v45, v4

    move-object/from16 v1, v26

    move/from16 v4, v40

    move/from16 v5, v42

    move/from16 v40, v28

    goto :goto_14

    .line 622
    :cond_1a
    :goto_12
    move-object/from16 v39, v0

    .end local v0    # "timestamps":[J
    .local v39, "timestamps":[J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v1

    .end local v1    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .local v41, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    const-string v1, "Inconsistent stbl box for track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v45, v4

    move-object/from16 v1, v26

    .end local v4    # "duration":J
    .end local v26    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v1, "track":Landroidx/media3/extractor/mp4/Track;
    .local v45, "duration":J
    iget v4, v1, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, v43

    .end local v43    # "remainingSynchronizationSamples":I
    .local v4, "remainingSynchronizationSamples":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, v42

    .end local v42    # "remainingSamplesAtTimestampDelta":I
    .local v5, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v4    # "remainingSynchronizationSamples":I
    .restart local v43    # "remainingSynchronizationSamples":I
    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, v40

    .end local v40    # "remainingTimestampDeltaChanges":I
    .local v4, "remainingTimestampDeltaChanges":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v26, v3

    .end local v3    # "remainingSamplesInChunk":I
    .local v26, "remainingSamplesInChunk":I
    const-string v3, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v3, v28

    .end local v28    # "remainingSamplesAtTimestampOffset":I
    .local v3, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 636
    if-nez v31, :cond_1b

    const-string v28, ", ctts invalid"

    goto :goto_13

    :cond_1b
    const-string v28, ""

    :goto_13
    move/from16 v40, v3

    move-object/from16 v3, v28

    .end local v3    # "remainingSamplesAtTimestampOffset":I
    .local v40, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .end local v21    # "offset":J
    .end local v26    # "remainingSamplesInChunk":I
    .end local v31    # "isCttsValid":Z
    :goto_14
    move/from16 v28, v6

    move/from16 v31, v7

    move v2, v10

    move-object v10, v15

    move/from16 v26, v16

    move-wide/from16 v54, v32

    move-object/from16 v0, v39

    move/from16 v32, v43

    move-object/from16 v3, v44

    move v7, v5

    move-wide/from16 v5, v45

    .end local v6    # "timestampOffset":I
    .end local v15    # "sizes":[I
    .end local v16    # "remainingTimestampOffsetChanges":I
    .end local v39    # "timestamps":[J
    .end local v43    # "remainingSynchronizationSamples":I
    .end local v44    # "offsets":[J
    .end local v45    # "duration":J
    .restart local v0    # "timestamps":[J
    .local v2, "nextSynchronizationSampleIndex":I
    .local v3, "offsets":[J
    .local v5, "duration":J
    .local v7, "remainingSamplesAtTimestampDelta":I
    .local v10, "sizes":[I
    .local v26, "remainingTimestampOffsetChanges":I
    .local v28, "timestampOffset":I
    .local v31, "maximumSize":I
    .local v32, "remainingSynchronizationSamples":I
    .local v54, "timestampTimeUnits":J
    :goto_15
    const-wide/32 v44, 0xf4240

    move-object/from16 v39, v11

    move-object/from16 v33, v12

    .end local v11    # "stss":Landroidx/media3/common/util/ParsableByteArray;
    .end local v12    # "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .local v33, "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .local v39, "stss":Landroidx/media3/common/util/ParsableByteArray;
    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v42, v5

    move-wide/from16 v46, v11

    invoke-static/range {v42 .. v47}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 641
    .local v11, "durationUs":J
    iget-object v15, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    move-object/from16 v42, v13

    move/from16 v43, v14

    .end local v13    # "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    .end local v14    # "sampleCount":I
    .local v42, "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    .local v43, "sampleCount":I
    const-wide/32 v13, 0xf4240

    if-nez v15, :cond_1c

    .line 642
    move-wide/from16 v44, v5

    move v6, v4

    .end local v4    # "remainingTimestampDeltaChanges":I
    .end local v5    # "duration":J
    .local v6, "remainingTimestampDeltaChanges":I
    .local v44, "duration":J
    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v0, v13, v14, v4, v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 643
    new-instance v4, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v5, v38

    .end local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .local v5, "stts":Landroidx/media3/common/util/ParsableByteArray;
    move-object v15, v4

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move/from16 v19, v31

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    move-wide/from16 v22, v11

    invoke-direct/range {v15 .. v23}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v4

    .line 654
    .end local v6    # "remainingTimestampDeltaChanges":I
    .end local v44    # "duration":J
    .restart local v4    # "remainingTimestampDeltaChanges":I
    .local v5, "duration":J
    .restart local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    :cond_1c
    move-wide/from16 v44, v5

    move-object/from16 v5, v38

    move v6, v4

    .end local v4    # "remainingTimestampDeltaChanges":I
    .end local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .local v5, "stts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v6    # "remainingTimestampDeltaChanges":I
    .restart local v44    # "duration":J
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_21

    iget v4, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    if-ne v4, v15, :cond_21

    array-length v4, v0

    const/4 v15, 0x2

    if-lt v4, v15, :cond_21

    .line 657
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v15, 0x0

    aget-wide v56, v4, v15

    .line 658
    .local v56, "editStartTime":J
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v46, v4, v15

    iget-wide v13, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v38, v5

    .end local v5    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 660
    move-wide/from16 v48, v13

    move-wide/from16 v50, v4

    invoke-static/range {v46 .. v51}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    add-long v4, v56, v4

    .line 662
    .local v4, "editEndTime":J
    move-object/from16 v47, v0

    move-wide/from16 v48, v44

    move-wide/from16 v50, v56

    move-wide/from16 v52, v4

    invoke-static/range {v47 .. v53}, Landroidx/media3/extractor/mp4/BoxParser;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 663
    sub-long v13, v44, v4

    .line 664
    .local v13, "paddingTimeUnits":J
    const/16 v19, 0x0

    aget-wide v21, v0, v19

    sub-long v46, v56, v21

    iget-object v15, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v15, v15, Landroidx/media3/common/Format;->sampleRate:I

    move-wide/from16 v52, v4

    .end local v4    # "editEndTime":J
    .local v52, "editEndTime":J
    int-to-long v4, v15

    move/from16 v59, v6

    move/from16 v58, v7

    .end local v6    # "remainingTimestampDeltaChanges":I
    .end local v7    # "remainingSamplesAtTimestampDelta":I
    .local v58, "remainingSamplesAtTimestampDelta":I
    .local v59, "remainingTimestampDeltaChanges":I
    iget-wide v6, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 665
    move-wide/from16 v48, v4

    move-wide/from16 v50, v6

    invoke-static/range {v46 .. v51}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 667
    .local v4, "encoderDelay":J
    iget-object v6, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v6, v6

    move-wide/from16 v60, v11

    .end local v11    # "durationUs":J
    .local v60, "durationUs":J
    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 668
    move-wide/from16 v46, v13

    move-wide/from16 v48, v6

    move-wide/from16 v50, v11

    invoke-static/range {v46 .. v51}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 669
    .local v6, "encoderPadding":J
    const-wide/16 v11, 0x0

    cmp-long v15, v4, v11

    if-nez v15, :cond_1e

    cmp-long v15, v6, v11

    if-eqz v15, :cond_1d

    goto :goto_16

    :cond_1d
    move-object/from16 v12, p2

    goto/16 :goto_17

    :cond_1e
    :goto_16
    const-wide/32 v11, 0x7fffffff

    cmp-long v15, v4, v11

    if-gtz v15, :cond_1f

    cmp-long v11, v6, v11

    if-gtz v11, :cond_1f

    .line 672
    long-to-int v11, v4

    move-object/from16 v12, p2

    iput v11, v12, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 673
    long-to-int v11, v6

    iput v11, v12, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 674
    move-wide/from16 v46, v4

    .end local v4    # "encoderDelay":J
    .local v46, "encoderDelay":J
    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v48, v6

    const-wide/32 v6, 0xf4240

    .end local v6    # "encoderPadding":J
    .local v48, "encoderPadding":J
    invoke-static {v0, v6, v7, v4, v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 675
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v15, v4, v5

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 676
    const-wide/32 v17, 0xf4240

    move-wide/from16 v19, v4

    invoke-static/range {v15 .. v20}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 678
    .local v4, "editedDurationUs":J
    new-instance v6, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move/from16 v19, v31

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    move-wide/from16 v22, v4

    invoke-direct/range {v15 .. v23}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v6

    .line 669
    .end local v46    # "encoderDelay":J
    .end local v48    # "encoderPadding":J
    .local v4, "encoderDelay":J
    .restart local v6    # "encoderPadding":J
    :cond_1f
    move-object/from16 v12, p2

    move-wide/from16 v46, v4

    move-wide/from16 v48, v6

    .end local v4    # "encoderDelay":J
    .end local v6    # "encoderPadding":J
    .restart local v46    # "encoderDelay":J
    .restart local v48    # "encoderPadding":J
    goto :goto_17

    .line 662
    .end local v13    # "paddingTimeUnits":J
    .end local v46    # "encoderDelay":J
    .end local v48    # "encoderPadding":J
    .end local v52    # "editEndTime":J
    .end local v58    # "remainingSamplesAtTimestampDelta":I
    .end local v59    # "remainingTimestampDeltaChanges":I
    .end local v60    # "durationUs":J
    .local v4, "editEndTime":J
    .local v6, "remainingTimestampDeltaChanges":I
    .restart local v7    # "remainingSamplesAtTimestampDelta":I
    .restart local v11    # "durationUs":J
    :cond_20
    move-wide/from16 v52, v4

    move/from16 v59, v6

    move/from16 v58, v7

    move-wide/from16 v60, v11

    move-object/from16 v12, p2

    .end local v4    # "editEndTime":J
    .end local v6    # "remainingTimestampDeltaChanges":I
    .end local v7    # "remainingSamplesAtTimestampDelta":I
    .end local v11    # "durationUs":J
    .restart local v52    # "editEndTime":J
    .restart local v58    # "remainingSamplesAtTimestampDelta":I
    .restart local v59    # "remainingTimestampDeltaChanges":I
    .restart local v60    # "durationUs":J
    goto :goto_17

    .line 654
    .end local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v52    # "editEndTime":J
    .end local v56    # "editStartTime":J
    .end local v58    # "remainingSamplesAtTimestampDelta":I
    .end local v59    # "remainingTimestampDeltaChanges":I
    .end local v60    # "durationUs":J
    .restart local v5    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v6    # "remainingTimestampDeltaChanges":I
    .restart local v7    # "remainingSamplesAtTimestampDelta":I
    .restart local v11    # "durationUs":J
    :cond_21
    move-object/from16 v38, v5

    move/from16 v59, v6

    move/from16 v58, v7

    move-wide/from16 v60, v11

    move-object/from16 v12, p2

    .line 684
    .end local v5    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v6    # "remainingTimestampDeltaChanges":I
    .end local v7    # "remainingSamplesAtTimestampDelta":I
    .end local v11    # "durationUs":J
    .restart local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v58    # "remainingSamplesAtTimestampDelta":I
    .restart local v59    # "remainingTimestampDeltaChanges":I
    .restart local v60    # "durationUs":J
    :goto_17
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const-wide/16 v13, 0x0

    cmp-long v4, v6, v13

    if-nez v4, :cond_23

    .line 688
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    aget-wide v5, v4, v5

    .line 689
    .local v5, "editStartTime":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    array-length v7, v0

    if-ge v4, v7, :cond_22

    .line 690
    aget-wide v13, v0, v4

    sub-long v15, v13, v5

    iget-wide v13, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 691
    const-wide/32 v17, 0xf4240

    move-wide/from16 v19, v13

    invoke-static/range {v15 .. v20}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    aput-wide v13, v0, v4

    .line 689
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 694
    .end local v4    # "i":I
    :cond_22
    sub-long v13, v44, v5

    move-wide/from16 v46, v5

    .end local v5    # "editStartTime":J
    .local v46, "editStartTime":J
    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 695
    const-wide/32 v15, 0xf4240

    move-wide/from16 v17, v4

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 696
    .end local v60    # "durationUs":J
    .local v4, "durationUs":J
    new-instance v6, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move/from16 v19, v31

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    move-wide/from16 v22, v4

    invoke-direct/range {v15 .. v23}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v6

    .line 704
    .end local v4    # "durationUs":J
    .end local v46    # "editStartTime":J
    .restart local v60    # "durationUs":J
    :cond_23
    iget v4, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    const/4 v4, 0x1

    goto :goto_19

    :cond_24
    const/4 v4, 0x0

    .line 707
    .local v4, "omitZeroDurationClippedSample":Z
    :goto_19
    const/4 v5, 0x0

    .line 708
    .local v5, "editedSampleCount":I
    const/4 v6, 0x0

    .line 709
    .local v6, "nextSampleIndex":I
    const/4 v7, 0x0

    .line 710
    .local v7, "copyMetadata":Z
    iget-object v11, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v11, v11

    new-array v11, v11, [I

    .line 711
    .local v11, "startIndices":[I
    iget-object v13, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v13, v13

    new-array v13, v13, [I

    .line 712
    .local v13, "endIndices":[I
    iget-object v14, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 713
    .local v14, "editListMediaTimes":[J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1a
    move/from16 v16, v2

    .end local v2    # "nextSynchronizationSampleIndex":I
    .local v16, "nextSynchronizationSampleIndex":I
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v2, v2

    if-ge v15, v2, :cond_29

    .line 714
    move v2, v9

    move-object/from16 v21, v10

    .end local v9    # "timestampDeltaInTimeUnits":I
    .end local v10    # "sizes":[I
    .local v2, "timestampDeltaInTimeUnits":I
    .local v21, "sizes":[I
    aget-wide v9, v14, v15

    .line 715
    .local v9, "editMediaTime":J
    const-wide/16 v46, -0x1

    cmp-long v22, v9, v46

    if-eqz v22, :cond_28

    .line 716
    move/from16 v22, v2

    .end local v2    # "timestampDeltaInTimeUnits":I
    .local v22, "timestampDeltaInTimeUnits":I
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v46, v2, v15

    move-object/from16 v52, v3

    .end local v3    # "offsets":[J
    .local v52, "offsets":[J
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move/from16 v53, v6

    move/from16 v56, v7

    .end local v6    # "nextSampleIndex":I
    .end local v7    # "copyMetadata":Z
    .local v53, "nextSampleIndex":I
    .local v56, "copyMetadata":Z
    iget-wide v6, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 717
    move-wide/from16 v48, v2

    move-wide/from16 v50, v6

    invoke-static/range {v46 .. v51}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 728
    .local v2, "editDuration":J
    nop

    .line 729
    const/4 v6, 0x1

    invoke-static {v0, v9, v10, v6, v6}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v7

    aput v7, v11, v15

    .line 731
    :goto_1b
    aget v7, v11, v15

    if-ltz v7, :cond_25

    aget v7, v11, v15

    aget v7, v8, v7

    and-int/2addr v7, v6

    if-nez v7, :cond_25

    .line 732
    aget v7, v11, v15

    sub-int/2addr v7, v6

    aput v7, v11, v15

    const/4 v6, 0x1

    goto :goto_1b

    .line 738
    :cond_25
    add-long v6, v9, v2

    .line 739
    const/4 v12, 0x0

    invoke-static {v0, v6, v7, v4, v12}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v6

    aput v6, v13, v15

    .line 744
    iget v6, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_26

    .line 749
    :goto_1c
    aget v6, v13, v15

    array-length v7, v0

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_26

    aget v6, v13, v15

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v0, v6

    add-long v46, v9, v2

    cmp-long v6, v6, v46

    if-gtz v6, :cond_26

    .line 751
    aget v6, v13, v15

    add-int/lit8 v6, v6, 0x1

    aput v6, v13, v15

    const/4 v7, 0x2

    goto :goto_1c

    .line 754
    :cond_26
    aget v6, v13, v15

    aget v7, v11, v15

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 755
    aget v6, v11, v15

    move/from16 v7, v53

    .end local v53    # "nextSampleIndex":I
    .local v7, "nextSampleIndex":I
    if-eq v7, v6, :cond_27

    const/4 v6, 0x1

    goto :goto_1d

    :cond_27
    move v6, v12

    :goto_1d
    or-int v6, v56, v6

    .line 756
    .end local v56    # "copyMetadata":Z
    .local v6, "copyMetadata":Z
    aget v7, v13, v15

    move/from16 v76, v7

    move v7, v6

    move/from16 v6, v76

    goto :goto_1e

    .line 715
    .end local v22    # "timestampDeltaInTimeUnits":I
    .end local v52    # "offsets":[J
    .local v2, "timestampDeltaInTimeUnits":I
    .restart local v3    # "offsets":[J
    .local v6, "nextSampleIndex":I
    .local v7, "copyMetadata":Z
    :cond_28
    move/from16 v22, v2

    move-object/from16 v52, v3

    move/from16 v56, v7

    const/4 v12, 0x0

    move v7, v6

    .end local v2    # "timestampDeltaInTimeUnits":I
    .end local v3    # "offsets":[J
    .end local v6    # "nextSampleIndex":I
    .local v7, "nextSampleIndex":I
    .restart local v22    # "timestampDeltaInTimeUnits":I
    .restart local v52    # "offsets":[J
    .restart local v56    # "copyMetadata":Z
    move/from16 v7, v56

    .line 713
    .end local v9    # "editMediaTime":J
    .end local v56    # "copyMetadata":Z
    .restart local v6    # "nextSampleIndex":I
    .local v7, "copyMetadata":Z
    :goto_1e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, p2

    move/from16 v2, v16

    move-object/from16 v10, v21

    move/from16 v9, v22

    move-object/from16 v3, v52

    goto/16 :goto_1a

    .end local v21    # "sizes":[I
    .end local v22    # "timestampDeltaInTimeUnits":I
    .end local v52    # "offsets":[J
    .restart local v3    # "offsets":[J
    .local v9, "timestampDeltaInTimeUnits":I
    .restart local v10    # "sizes":[I
    :cond_29
    move-object/from16 v52, v3

    move/from16 v56, v7

    move/from16 v22, v9

    move-object/from16 v21, v10

    const/4 v12, 0x0

    move v7, v6

    .line 759
    .end local v3    # "offsets":[J
    .end local v6    # "nextSampleIndex":I
    .end local v9    # "timestampDeltaInTimeUnits":I
    .end local v10    # "sizes":[I
    .end local v15    # "i":I
    .local v7, "nextSampleIndex":I
    .restart local v21    # "sizes":[I
    .restart local v22    # "timestampDeltaInTimeUnits":I
    .restart local v52    # "offsets":[J
    .restart local v56    # "copyMetadata":Z
    move/from16 v2, v43

    .end local v43    # "sampleCount":I
    .local v2, "sampleCount":I
    if-eq v5, v2, :cond_2a

    const/4 v3, 0x1

    goto :goto_1f

    :cond_2a
    move v3, v12

    :goto_1f
    or-int v3, v56, v3

    .line 762
    .end local v56    # "copyMetadata":Z
    .local v3, "copyMetadata":Z
    if-eqz v3, :cond_2b

    new-array v6, v5, [J

    goto :goto_20

    :cond_2b
    move-object/from16 v6, v52

    .line 763
    .local v6, "editedOffsets":[J
    :goto_20
    if-eqz v3, :cond_2c

    new-array v9, v5, [I

    goto :goto_21

    :cond_2c
    move-object/from16 v9, v21

    .line 764
    .local v9, "editedSizes":[I
    :goto_21
    if-eqz v3, :cond_2d

    goto :goto_22

    :cond_2d
    move/from16 v12, v31

    :goto_22
    move v10, v12

    .line 765
    .local v10, "editedMaximumSize":I
    if-eqz v3, :cond_2e

    new-array v12, v5, [I

    goto :goto_23

    :cond_2e
    move-object v12, v8

    .line 766
    .local v12, "editedFlags":[I
    :goto_23
    new-array v15, v5, [J

    .line 767
    .local v15, "editedTimestamps":[J
    const-wide/16 v19, 0x0

    .line 768
    .local v19, "pts":J
    const/16 v43, 0x0

    .line 769
    .local v43, "sampleIndex":I
    const/16 v46, 0x0

    .line 770
    .local v46, "hasPrerollSamples":Z
    const/16 v47, 0x0

    move/from16 v56, v4

    move/from16 v53, v46

    move/from16 v4, v47

    move/from16 v76, v43

    move/from16 v43, v2

    move/from16 v2, v76

    .end local v46    # "hasPrerollSamples":Z
    .local v2, "sampleIndex":I
    .local v4, "i":I
    .local v43, "sampleCount":I
    .local v53, "hasPrerollSamples":Z
    .local v56, "omitZeroDurationClippedSample":Z
    :goto_24
    move/from16 v57, v5

    .end local v5    # "editedSampleCount":I
    .local v57, "editedSampleCount":I
    iget-object v5, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    if-ge v4, v5, :cond_34

    .line 771
    iget-object v5, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v62, v5, v4

    .line 772
    .local v62, "editMediaTime":J
    aget v5, v11, v4

    .line 773
    .local v5, "startIndex":I
    move/from16 v71, v7

    .end local v7    # "nextSampleIndex":I
    .local v71, "nextSampleIndex":I
    aget v7, v13, v4

    .line 774
    .local v7, "endIndex":I
    if-eqz v3, :cond_2f

    .line 775
    move-object/from16 v72, v11

    .end local v11    # "startIndices":[I
    .local v72, "startIndices":[I
    sub-int v11, v7, v5

    .line 776
    .local v11, "count":I
    move-object/from16 v73, v13

    move-object/from16 v13, v52

    .end local v52    # "offsets":[J
    .local v13, "offsets":[J
    .local v73, "endIndices":[I
    invoke-static {v13, v5, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    move-object/from16 v13, v21

    .end local v21    # "sizes":[I
    .local v13, "sizes":[I
    .restart local v52    # "offsets":[J
    invoke-static {v13, v5, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    invoke-static {v8, v5, v12, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    .line 774
    .end local v72    # "startIndices":[I
    .end local v73    # "endIndices":[I
    .local v11, "startIndices":[I
    .local v13, "endIndices":[I
    .restart local v21    # "sizes":[I
    :cond_2f
    move-object/from16 v72, v11

    move-object/from16 v73, v13

    move-object/from16 v13, v21

    .line 780
    .end local v11    # "startIndices":[I
    .end local v21    # "sizes":[I
    .local v13, "sizes":[I
    .restart local v72    # "startIndices":[I
    .restart local v73    # "endIndices":[I
    :goto_25
    move v11, v5

    .local v11, "j":I
    :goto_26
    if-ge v11, v7, :cond_33

    .line 781
    const-wide/32 v48, 0xf4240

    move/from16 v64, v7

    move-object/from16 v21, v8

    .end local v7    # "endIndex":I
    .end local v8    # "flags":[I
    .local v21, "flags":[I
    .local v64, "endIndex":I
    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v46, v19

    move-wide/from16 v50, v7

    invoke-static/range {v46 .. v51}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 782
    .local v7, "ptsUs":J
    aget-wide v46, v0, v11

    sub-long v65, v46, v62

    move/from16 v46, v5

    move-object/from16 v74, v6

    .end local v5    # "startIndex":I
    .end local v6    # "editedOffsets":[J
    .local v46, "startIndex":I
    .local v74, "editedOffsets":[J
    iget-wide v5, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 783
    const-wide/32 v67, 0xf4240

    move-wide/from16 v69, v5

    invoke-static/range {v65 .. v70}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 785
    .local v5, "timeInSegmentUs":J
    const-wide/16 v17, 0x0

    cmp-long v47, v5, v17

    if-gez v47, :cond_30

    .line 786
    const/16 v53, 0x1

    .line 788
    :cond_30
    add-long v47, v7, v5

    aput-wide v47, v15, v2

    .line 789
    if-eqz v3, :cond_31

    move-object/from16 v75, v0

    .end local v0    # "timestamps":[J
    .local v75, "timestamps":[J
    aget v0, v9, v2

    if-le v0, v10, :cond_32

    .line 790
    aget v10, v13, v11

    goto :goto_27

    .line 789
    .end local v75    # "timestamps":[J
    .restart local v0    # "timestamps":[J
    :cond_31
    move-object/from16 v75, v0

    .line 792
    .end local v0    # "timestamps":[J
    .restart local v75    # "timestamps":[J
    :cond_32
    :goto_27
    nop

    .end local v5    # "timeInSegmentUs":J
    .end local v7    # "ptsUs":J
    add-int/lit8 v2, v2, 0x1

    .line 780
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v21

    move/from16 v5, v46

    move/from16 v7, v64

    move-object/from16 v6, v74

    move-object/from16 v0, v75

    goto :goto_26

    .end local v21    # "flags":[I
    .end local v46    # "startIndex":I
    .end local v64    # "endIndex":I
    .end local v74    # "editedOffsets":[J
    .end local v75    # "timestamps":[J
    .restart local v0    # "timestamps":[J
    .local v5, "startIndex":I
    .restart local v6    # "editedOffsets":[J
    .local v7, "endIndex":I
    .restart local v8    # "flags":[I
    :cond_33
    move-object/from16 v75, v0

    move/from16 v46, v5

    move-object/from16 v74, v6

    move/from16 v64, v7

    move-object/from16 v21, v8

    const-wide/16 v17, 0x0

    .line 794
    .end local v0    # "timestamps":[J
    .end local v5    # "startIndex":I
    .end local v6    # "editedOffsets":[J
    .end local v7    # "endIndex":I
    .end local v8    # "flags":[I
    .end local v11    # "j":I
    .restart local v21    # "flags":[I
    .restart local v46    # "startIndex":I
    .restart local v64    # "endIndex":I
    .restart local v74    # "editedOffsets":[J
    .restart local v75    # "timestamps":[J
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v5, v0, v4

    add-long v19, v19, v5

    .line 770
    .end local v46    # "startIndex":I
    .end local v62    # "editMediaTime":J
    .end local v64    # "endIndex":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v57

    move/from16 v7, v71

    move-object/from16 v11, v72

    move-object/from16 v6, v74

    move-object/from16 v0, v75

    move-object/from16 v21, v13

    move-object/from16 v13, v73

    goto/16 :goto_24

    .end local v71    # "nextSampleIndex":I
    .end local v72    # "startIndices":[I
    .end local v73    # "endIndices":[I
    .end local v74    # "editedOffsets":[J
    .end local v75    # "timestamps":[J
    .restart local v0    # "timestamps":[J
    .restart local v6    # "editedOffsets":[J
    .local v7, "nextSampleIndex":I
    .restart local v8    # "flags":[I
    .local v11, "startIndices":[I
    .local v13, "endIndices":[I
    .local v21, "sizes":[I
    :cond_34
    move-object/from16 v75, v0

    move-object/from16 v74, v6

    move/from16 v71, v7

    move-object/from16 v72, v11

    move-object/from16 v73, v13

    move-object/from16 v13, v21

    move-object/from16 v21, v8

    .line 796
    .end local v0    # "timestamps":[J
    .end local v4    # "i":I
    .end local v6    # "editedOffsets":[J
    .end local v7    # "nextSampleIndex":I
    .end local v8    # "flags":[I
    .end local v11    # "startIndices":[I
    .local v13, "sizes":[I
    .local v21, "flags":[I
    .restart local v71    # "nextSampleIndex":I
    .restart local v72    # "startIndices":[I
    .restart local v73    # "endIndices":[I
    .restart local v74    # "editedOffsets":[J
    .restart local v75    # "timestamps":[J
    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 797
    const-wide/32 v48, 0xf4240

    move-wide/from16 v46, v19

    move-wide/from16 v50, v4

    invoke-static/range {v46 .. v51}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 798
    .local v4, "editedDurationUs":J
    if-eqz v53, :cond_35

    .line 799
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 800
    .local v0, "format":Landroidx/media3/common/Format;
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v7

    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v7, "track":Landroidx/media3/extractor/mp4/Track;
    goto :goto_28

    .line 798
    .end local v0    # "format":Landroidx/media3/common/Format;
    .end local v7    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    :cond_35
    move-object v7, v1

    .line 802
    .end local v1    # "track":Landroidx/media3/extractor/mp4/Track;
    .restart local v7    # "track":Landroidx/media3/extractor/mp4/Track;
    :goto_28
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v62, v0

    move-object/from16 v63, v7

    move-object/from16 v64, v74

    move-object/from16 v65, v9

    move/from16 v66, v10

    move-object/from16 v67, v15

    move-object/from16 v68, v12

    move-wide/from16 v69, v4

    invoke-direct/range {v62 .. v70}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 416
    .end local v2    # "sampleIndex":I
    .end local v3    # "copyMetadata":Z
    .end local v4    # "editedDurationUs":J
    .end local v7    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v9    # "editedSizes":[I
    .end local v10    # "editedMaximumSize":I
    .end local v13    # "sizes":[I
    .end local v14    # "editListMediaTimes":[J
    .end local v15    # "editedTimestamps":[J
    .end local v16    # "nextSynchronizationSampleIndex":I
    .end local v19    # "pts":J
    .end local v21    # "flags":[I
    .end local v22    # "timestampDeltaInTimeUnits":I
    .end local v24    # "fixedSampleSize":I
    .end local v25    # "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v26    # "remainingTimestampOffsetChanges":I
    .end local v27    # "chunkOffsetsAreLongs":Z
    .end local v28    # "timestampOffset":I
    .end local v29    # "cttsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v30    # "chunkOffsetsAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v31    # "maximumSize":I
    .end local v32    # "remainingSynchronizationSamples":I
    .end local v33    # "chunkIterator":Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
    .end local v34    # "sampleMimeType":Ljava/lang/String;
    .end local v35    # "rechunkFixedSizeSamples":Z
    .end local v36    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v37    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .end local v38    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v39    # "stss":Landroidx/media3/common/util/ParsableByteArray;
    .end local v40    # "remainingSamplesAtTimestampOffset":I
    .end local v41    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v42    # "sampleSizeBox":Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
    .end local v43    # "sampleCount":I
    .end local v44    # "duration":J
    .end local v52    # "offsets":[J
    .end local v53    # "hasPrerollSamples":Z
    .end local v54    # "timestampTimeUnits":J
    .end local v56    # "omitZeroDurationClippedSample":Z
    .end local v57    # "editedSampleCount":I
    .end local v58    # "remainingSamplesAtTimestampDelta":I
    .end local v59    # "remainingTimestampDeltaChanges":I
    .end local v60    # "durationUs":J
    .end local v71    # "nextSampleIndex":I
    .end local v72    # "startIndices":[I
    .end local v73    # "endIndices":[I
    .end local v74    # "editedOffsets":[J
    .end local v75    # "timestamps":[J
    .local v1, "stz2Atom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v12, "stszAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .local p0, "track":Landroidx/media3/extractor/mp4/Track;
    :cond_36
    const-string v0, "Track has no sample table size information"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static parseStereoViewBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$EyesData;
    .locals 12
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2156
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2157
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2158
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_6

    .line 2159
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2160
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2161
    .local v1, "childAtomSize":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2162
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x73747269

    if-ne v4, v5, :cond_5

    .line 2164
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2165
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    .line 2166
    .local v5, "striInfo":I
    new-instance v6, Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    new-instance v7, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    and-int/lit8 v8, v5, 0x1

    if-ne v8, v3, :cond_1

    move v8, v3

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    and-int/lit8 v9, v5, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    move v9, v3

    goto :goto_3

    :cond_2
    move v9, v2

    :goto_3
    and-int/lit8 v10, v5, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    move v10, v3

    goto :goto_4

    :cond_3
    move v10, v2

    :goto_4
    and-int/lit8 v11, v5, 0x4

    if-ne v11, v4, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {v7, v8, v9, v10, v2}, Landroidx/media3/extractor/mp4/BoxParser$StriData;-><init>(ZZZZ)V

    invoke-direct {v6, v7}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V

    return-object v6

    .line 2173
    .end local v5    # "striInfo":I
    :cond_5
    add-int/2addr v0, v1

    .line 2174
    .end local v1    # "childAtomSize":I
    goto :goto_0

    .line 2175
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .locals 18
    .param p0, "stsd"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1012
    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 1014
    .local v12, "numberOfEntries":I
    new-instance v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    invoke-direct {v0, v12}, Landroidx/media3/extractor/mp4/BoxParser$StsdData;-><init>(I)V

    move-object v13, v0

    .line 1015
    .local v13, "out":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_9

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 1017
    .local v15, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 1018
    .local v16, "childAtomSize":I
    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize must be positive"

    invoke-static {v0, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 1020
    .local v9, "childAtomType":I
    const v0, 0x61766331

    if-eq v9, v0, :cond_8

    const v0, 0x61766333

    if-eq v9, v0, :cond_8

    const v0, 0x656e6376

    if-eq v9, v0, :cond_8

    const v0, 0x6d317620

    if-eq v9, v0, :cond_8

    const v0, 0x6d703476

    if-eq v9, v0, :cond_8

    const v0, 0x68766331

    if-eq v9, v0, :cond_8

    const v0, 0x68657631

    if-eq v9, v0, :cond_8

    const v0, 0x73323633

    if-eq v9, v0, :cond_8

    const v0, 0x48323633

    if-eq v9, v0, :cond_8

    const v0, 0x68323633

    if-eq v9, v0, :cond_8

    const v0, 0x76703038

    if-eq v9, v0, :cond_8

    const v0, 0x76703039

    if-eq v9, v0, :cond_8

    const v0, 0x61763031

    if-eq v9, v0, :cond_8

    const v0, 0x64766176

    if-eq v9, v0, :cond_8

    const v0, 0x64766131

    if-eq v9, v0, :cond_8

    const v0, 0x64766865

    if-eq v9, v0, :cond_8

    const v0, 0x64766831

    if-ne v9, v0, :cond_1

    move/from16 v17, v9

    goto/16 :goto_4

    .line 1047
    :cond_1
    const v0, 0x6d703461

    if-eq v9, v0, :cond_7

    const v0, 0x656e6361

    if-eq v9, v0, :cond_7

    const v0, 0x61632d33

    if-eq v9, v0, :cond_7

    const v0, 0x65632d33

    if-eq v9, v0, :cond_7

    const v0, 0x61632d34

    if-eq v9, v0, :cond_7

    const v0, 0x6d6c7061

    if-eq v9, v0, :cond_7

    const v0, 0x64747363

    if-eq v9, v0, :cond_7

    const v0, 0x64747365

    if-eq v9, v0, :cond_7

    const v0, 0x64747368

    if-eq v9, v0, :cond_7

    const v0, 0x6474736c

    if-eq v9, v0, :cond_7

    const v0, 0x64747378

    if-eq v9, v0, :cond_7

    const v0, 0x73616d72

    if-eq v9, v0, :cond_7

    const v0, 0x73617762

    if-eq v9, v0, :cond_7

    const v0, 0x6c70636d

    if-eq v9, v0, :cond_7

    const v0, 0x736f7774

    if-eq v9, v0, :cond_7

    const v0, 0x74776f73

    if-eq v9, v0, :cond_7

    const v0, 0x2e6d7032

    if-eq v9, v0, :cond_7

    const v0, 0x2e6d7033

    if-eq v9, v0, :cond_7

    const v0, 0x6d686131

    if-eq v9, v0, :cond_7

    const v0, 0x6d686d31

    if-eq v9, v0, :cond_7

    const v0, 0x616c6163

    if-eq v9, v0, :cond_7

    const v0, 0x616c6177

    if-eq v9, v0, :cond_7

    const v0, 0x756c6177

    if-eq v9, v0, :cond_7

    const v0, 0x4f707573

    if-eq v9, v0, :cond_7

    const v0, 0x664c6143

    if-eq v9, v0, :cond_7

    const v0, 0x69616d66

    if-ne v9, v0, :cond_2

    goto :goto_3

    .line 1084
    :cond_2
    const v0, 0x54544d4c

    if-eq v9, v0, :cond_6

    const v0, 0x74783367

    if-eq v9, v0, :cond_6

    const v0, 0x77767474

    if-eq v9, v0, :cond_6

    const v0, 0x73747070

    if-eq v9, v0, :cond_6

    const v0, 0x63363038

    if-ne v9, v0, :cond_3

    goto :goto_2

    .line 1091
    :cond_3
    const v0, 0x6d657474

    if-ne v9, v0, :cond_4

    .line 1092
    invoke-static {v10, v9, v15, v11, v13}, Landroidx/media3/extractor/mp4/BoxParser;->parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$StsdData;)V

    move/from16 v17, v9

    goto/16 :goto_5

    .line 1093
    :cond_4
    const v0, 0x63616d6d

    if-ne v9, v0, :cond_5

    .line 1094
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1096
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1097
    const-string v1, "application/x-camera-motion"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1098
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v17, v9

    goto :goto_5

    .line 1093
    :cond_5
    move/from16 v17, v9

    goto :goto_5

    .line 1089
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/BoxParser$StsdData;)V

    move/from16 v17, v9

    goto :goto_5

    .line 1073
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    .end local v9    # "childAtomType":I
    .local v17, "childAtomType":I
    move v9, v14

    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    goto :goto_5

    .line 1020
    .end local v17    # "childAtomType":I
    .restart local v9    # "childAtomType":I
    :cond_8
    move/from16 v17, v9

    .line 1037
    .end local v9    # "childAtomType":I
    .restart local v17    # "childAtomType":I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v14

    invoke-static/range {v0 .. v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    .line 1100
    :goto_5
    add-int v0, v15, v16

    invoke-virtual {v10, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1015
    .end local v15    # "childStartPosition":I
    .end local v16    # "childAtomSize":I
    .end local v17    # "childAtomType":I
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1102
    .end local v14    # "i":I
    :cond_9
    return-object v13
.end method

.method private static parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/BoxParser$StsdData;)V
    .locals 7
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    .line 1113
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, "initializationData":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<[B>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 1120
    .local v1, "subsampleOffsetUs":J
    const v3, 0x54544d4c

    if-ne p1, v3, :cond_0

    .line 1121
    const-string v3, "application/ttml+xml"

    .local v3, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1122
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    const v3, 0x74783367

    if-ne p1, v3, :cond_1

    .line 1123
    const-string v3, "application/x-quicktime-tx3g"

    .line 1124
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v4, p3, -0x8

    add-int/lit8 v4, v4, -0x8

    .line 1125
    .local v4, "sampleDescriptionLength":I
    new-array v5, v4, [B

    .line 1126
    .local v5, "sampleDescriptionData":[B
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1127
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1128
    .end local v4    # "sampleDescriptionLength":I
    .end local v5    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    const v3, 0x77767474

    if-ne p1, v3, :cond_2

    .line 1129
    const-string v3, "application/x-mp4-vtt"

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1130
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    const v3, 0x73747070

    if-ne p1, v3, :cond_3

    .line 1131
    const-string v3, "application/ttml+xml"

    .line 1132
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1133
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const v3, 0x63363038

    if-ne p1, v3, :cond_4

    .line 1135
    const-string v3, "application/x-mp4-cea-608"

    .line 1136
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v4, 0x1

    iput v4, p6, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    .line 1142
    :goto_0
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1144
    invoke-virtual {v4, p4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1145
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1146
    invoke-virtual {v4, p5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1147
    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1148
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1149
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, p6, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 1150
    return-void

    .line 1139
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private static parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    .locals 15
    .param p0, "tkhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 870
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 871
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 872
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    .line 874
    .local v2, "version":I
    const/16 v3, 0x10

    if-nez v2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 875
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 877
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 878
    const/4 v6, 0x1

    .line 879
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 880
    .local v7, "durationPosition":I
    if-nez v2, :cond_1

    move v0, v5

    .line 881
    .local v0, "durationByteCount":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_3

    .line 882
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v9

    add-int v10, v7, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 883
    const/4 v6, 0x0

    .line 884
    goto :goto_2

    .line 881
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 888
    .end local v8    # "i":I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 889
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 890
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .local v8, "duration":J
    goto :goto_4

    .line 892
    .end local v8    # "duration":J
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 893
    .restart local v8    # "duration":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    .line 896
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 900
    :cond_6
    :goto_4
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 901
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 902
    .local v3, "a00":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 903
    .local v10, "a01":I
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 904
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 905
    .local v5, "a10":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 908
    .local v11, "a11":I
    const/high16 v12, 0x10000

    .line 909
    .local v12, "fixedOne":I
    if-nez v3, :cond_7

    if-ne v10, v12, :cond_7

    neg-int v13, v12

    if-ne v5, v13, :cond_7

    if-nez v11, :cond_7

    .line 910
    const/16 v13, 0x5a

    .local v13, "rotationDegrees":I
    goto :goto_5

    .line 911
    .end local v13    # "rotationDegrees":I
    :cond_7
    if-nez v3, :cond_8

    neg-int v13, v12

    if-ne v10, v13, :cond_8

    if-ne v5, v12, :cond_8

    if-nez v11, :cond_8

    .line 912
    const/16 v13, 0x10e

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 913
    .end local v13    # "rotationDegrees":I
    :cond_8
    neg-int v13, v12

    if-ne v3, v13, :cond_9

    if-nez v10, :cond_9

    if-nez v5, :cond_9

    neg-int v13, v12

    if-ne v11, v13, :cond_9

    .line 914
    const/16 v13, 0xb4

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 917
    .end local v13    # "rotationDegrees":I
    :cond_9
    const/4 v13, 0x0

    .line 920
    .restart local v13    # "rotationDegrees":I
    :goto_5
    new-instance v14, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    invoke-direct {v14, v4, v8, v9, v13}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;-><init>(IJI)V

    return-object v14
.end method

.method public static parseTrak(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/container/Mp4Box$LeafBox;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;
    .locals 34
    .param p0, "trak"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p1, "mvhd"    # Landroidx/media3/container/Mp4Box$LeafBox;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 330
    move-object/from16 v0, p0

    const v1, 0x6d646961

    invoke-virtual {v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 332
    .local v1, "mdia":Landroidx/media3/container/Mp4Box$ContainerBox;
    nop

    .line 333
    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->getTrackTypeForHdlr(I)I

    move-result v2

    .line 334
    .local v2, "trackType":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 335
    return-object v4

    .line 338
    :cond_0
    const v3, 0x746b6864

    invoke-virtual {v0, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    move-result-object v20

    .line 339
    .local v20, "tkhdData":Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v5

    if-nez v3, :cond_1

    .line 340
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$000(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)J

    move-result-wide v7

    move-wide/from16 v21, v7

    .end local p2    # "duration":J
    .local v7, "duration":J
    goto :goto_0

    .line 339
    .end local v7    # "duration":J
    .restart local p2    # "duration":J
    :cond_1
    move-wide/from16 v21, p2

    .line 342
    .end local p2    # "duration":J
    .local v21, "duration":J
    :goto_0
    move-object/from16 v8, p1

    iget-object v3, v8, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v3

    iget-wide v13, v3, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    .line 344
    .local v13, "movieTimescale":J
    cmp-long v3, v21, v5

    if-nez v3, :cond_2

    .line 345
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v25, v5

    move-wide/from16 v23, v13

    .local v5, "durationUs":J
    goto :goto_1

    .line 347
    .end local v5    # "durationUs":J
    :cond_2
    const-wide/32 v11, 0xf4240

    move-wide/from16 v9, v21

    move-wide/from16 v23, v13

    .end local v13    # "movieTimescale":J
    .local v23, "movieTimescale":J
    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    move-wide/from16 v25, v5

    .line 349
    .local v25, "durationUs":J
    :goto_1
    nop

    .line 351
    const v3, 0x6d696e66

    invoke-virtual {v1, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 352
    const v5, 0x7374626c

    invoke-virtual {v3, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    .line 350
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 354
    .local v10, "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    const v3, 0x6d646864

    invoke-virtual {v1, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-result-object v27

    .line 355
    .local v27, "mdhdData":Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
    const v3, 0x73747364

    invoke-virtual {v10, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v11

    .line 356
    .local v11, "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v11, :cond_5

    .line 360
    iget-object v12, v11, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 363
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$100(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v13

    .line 364
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$200(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v14

    .line 365
    invoke-static/range {v27 .. v27}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;

    move-result-object v15

    .line 361
    move-object/from16 v16, p4

    move/from16 v17, p6

    invoke-static/range {v12 .. v17}, Landroidx/media3/extractor/mp4/BoxParser;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    move-result-object v9

    .line 368
    .local v9, "stsdData":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    const/4 v3, 0x0

    .line 369
    .local v3, "editListDurations":[J
    const/4 v5, 0x0

    .line 370
    .local v5, "editListMediaTimes":[J
    if-nez p5, :cond_3

    .line 371
    const v6, 0x65647473

    invoke-virtual {v0, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    .line 372
    .local v6, "edtsAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    if-eqz v6, :cond_3

    .line 373
    invoke-static {v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseEdts(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;

    move-result-object v7

    .line 374
    .local v7, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    if-eqz v7, :cond_3

    .line 375
    iget-object v12, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v12

    check-cast v3, [J

    .line 376
    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v12

    check-cast v5, [J

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    goto :goto_2

    .line 380
    .end local v6    # "edtsAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v7    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    :cond_3
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    .end local v3    # "editListDurations":[J
    .end local v5    # "editListMediaTimes":[J
    .local v28, "editListDurations":[J
    .local v29, "editListMediaTimes":[J
    :goto_2
    iget-object v3, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v3, :cond_4

    .line 381
    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    goto :goto_3

    .line 382
    :cond_4
    new-instance v30, Landroidx/media3/extractor/mp4/Track;

    move-object/from16 v3, v30

    .line 383
    invoke-static/range {v20 .. v20}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$100(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v4

    .line 385
    invoke-static/range {v27 .. v27}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$400(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v6

    .line 388
    invoke-static/range {v27 .. v27}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$500(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v12

    iget-object v14, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    iget v15, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    iget-object v5, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v16, v5

    iget v5, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v17, v5

    move v5, v2

    move-object/from16 v31, v9

    .end local v9    # "stsdData":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .local v31, "stsdData":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    move-wide/from16 v8, v23

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    .end local v10    # "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v11    # "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v32, "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    .local v33, "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    move-wide/from16 v10, v25

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    invoke-direct/range {v3 .. v19}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v4, v30

    .line 380
    :goto_3
    return-object v4

    .line 357
    .end local v28    # "editListDurations":[J
    .end local v29    # "editListMediaTimes":[J
    .end local v31    # "stsdData":Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .end local v32    # "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v33    # "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    .restart local v10    # "stbl":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v11    # "stsd":Landroidx/media3/container/Mp4Box$LeafBox;
    :cond_5
    const-string v3, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v3, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3
.end method

.method public static parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 11
    .param p0, "moov"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p1, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroidx/media3/extractor/GaplessInfoHolder;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/extractor/mp4/Track;",
            "Landroidx/media3/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 143
    .local p7, "modifyTrackFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Track;>;"
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 145
    iget-object v3, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 146
    .local v3, "atom":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget v4, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_0

    .line 147
    move-object v7, p1

    move-object/from16 v5, p7

    goto :goto_1

    .line 150
    :cond_0
    nop

    .line 154
    const v4, 0x6d766864

    invoke-virtual {p0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 152
    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroidx/media3/extractor/mp4/BoxParser;->parseTrak(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/container/Mp4Box$LeafBox;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;

    move-result-object v4

    .line 151
    move-object/from16 v5, p7

    invoke-interface {v5, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Track;

    .line 159
    .local v4, "track":Landroidx/media3/extractor/mp4/Track;
    if-nez v4, :cond_1

    .line 160
    move-object v7, p1

    goto :goto_1

    .line 162
    :cond_1
    nop

    .line 165
    const v6, 0x6d646961

    invoke-virtual {v3, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 166
    const v7, 0x6d696e66

    invoke-virtual {v6, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    .line 164
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 167
    const v7, 0x7374626c

    invoke-virtual {v6, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    .line 163
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 168
    .local v6, "stblAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    move-object v7, p1

    invoke-static {v4, v6, p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-result-object v8

    .line 169
    .local v8, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3    # "atom":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v4    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v6    # "stblAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v8    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v7, p1

    move-object/from16 v5, p7

    .line 171
    .end local v2    # "i":I
    return-object v1
.end method

.method public static parseUdta(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;
    .locals 7
    .param p0, "udtaBox"    # Landroidx/media3/container/Mp4Box$LeafBox;

    .line 181
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 182
    .local v0, "udtaData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 183
    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v2, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 184
    .local v2, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 185
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 186
    .local v3, "atomPosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 187
    .local v4, "atomSize":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 188
    .local v5, "atomType":I
    const v6, 0x6d657461

    if-ne v5, v6, :cond_0

    .line 189
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 190
    add-int v6, v3, v4

    .line 191
    invoke-static {v0, v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_1

    .line 192
    :cond_0
    const v6, 0x736d7461

    if-ne v5, v6, :cond_1

    .line 193
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 194
    add-int v6, v3, v4

    .line 196
    invoke-static {v0, v6}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v6

    .line 195
    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_1

    .line 197
    :cond_1
    const v6, -0x56878686

    if-ne v5, v6, :cond_2

    .line 198
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 200
    :cond_2
    :goto_1
    add-int v6, v3, v4

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 201
    .end local v3    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v5    # "atomType":I
    goto :goto_0

    .line 202
    :cond_3
    return-object v2
.end method

.method private static parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 4
    .param p0, "meta"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 814
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 815
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 816
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 817
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 818
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 819
    .local v1, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 820
    .local v2, "atomType":I
    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 821
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 822
    add-int v3, v0, v1

    invoke-static {p0, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v3

    return-object v3

    .line 824
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 825
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static parseVideoExtendedUsageBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    .locals 5
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2137
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2138
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 2139
    .local v0, "childPosition":I
    const/4 v1, 0x0

    .line 2140
    .local v1, "eyesData":Landroidx/media3/extractor/mp4/BoxParser$EyesData;
    :goto_0
    sub-int v2, v0, p1

    if-ge v2, p2, :cond_2

    .line 2141
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2142
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2143
    .local v2, "childAtomSize":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "childAtomSize must be positive"

    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2144
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 2145
    .local v3, "childAtomType":I
    const v4, 0x65796573

    if-ne v3, v4, :cond_1

    .line 2146
    invoke-static {p0, v0, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseStereoViewBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v1

    .line 2148
    :cond_1
    add-int/2addr v0, v2

    .line 2149
    .end local v2    # "childAtomSize":I
    .end local v3    # "childAtomType":I
    goto :goto_0

    .line 2150
    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)V

    :goto_2
    return-object v2
.end method

.method private static parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 42
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p7, "out"    # Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1165
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1167
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1168
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1169
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 1170
    .local v6, "height":I
    const/4 v7, 0x0

    .line 1171
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1173
    .local v8, "pixelWidthHeightRatio":F
    const/16 v9, 0x8

    .line 1174
    .local v9, "bitdepthLuma":I
    const/16 v10, 0x8

    .line 1175
    .local v10, "bitdepthChroma":I
    const/16 v11, 0x32

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1177
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 1178
    .local v11, "childPosition":I
    const v12, 0x656e6376

    move/from16 v14, p1

    if-ne v14, v12, :cond_2

    .line 1180
    nop

    .line 1181
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v12

    .line 1182
    .local v12, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v12, :cond_1

    .line 1183
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1185
    .end local p1    # "atomType":I
    .local v14, "atomType":I
    if-nez v3, :cond_0

    .line 1186
    const/4 v15, 0x0

    goto :goto_0

    .line 1187
    :cond_0
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v15}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v15

    :goto_0
    move-object v3, v15

    .line 1188
    .end local p6    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v3, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v15, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v15, p8

    .line 1190
    :cond_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1197
    .end local v12    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_2
    const/4 v12, 0x0

    .line 1198
    .local v12, "mimeType":Ljava/lang/String;
    const v13, 0x6d317620

    if-ne v14, v13, :cond_3

    .line 1199
    const-string/jumbo v12, "video/mpeg"

    goto :goto_1

    .line 1200
    :cond_3
    const v13, 0x48323633

    if-ne v14, v13, :cond_4

    .line 1201
    const-string/jumbo v12, "video/3gpp"

    .line 1204
    :cond_4
    :goto_1
    const/4 v13, 0x0

    .line 1205
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v15, 0x0

    .line 1206
    .local v15, "codecs":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1207
    .local v17, "projectionData":[B
    const/16 v18, -0x1

    .line 1208
    .local v18, "stereoMode":I
    const/16 v19, 0x0

    .line 1209
    .local v19, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    const/16 v20, -0x1

    .line 1210
    .local v20, "maxNumReorderSamples":I
    const/16 v21, 0x0

    .line 1213
    .local v21, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    const/16 v22, -0x1

    .line 1214
    .local v22, "colorSpace":I
    const/16 v23, -0x1

    .line 1215
    .local v23, "colorRange":I
    const/16 v24, -0x1

    .line 1217
    .local v24, "colorTransfer":I
    const/16 v25, 0x0

    move/from16 v26, v20

    move/from16 v20, v8

    move-object/from16 v8, v21

    move/from16 v21, v6

    move/from16 v6, v22

    move/from16 v22, v5

    move/from16 v5, v23

    move-object/from16 v23, v15

    move/from16 v15, v24

    move-object/from16 v41, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move-object/from16 v18, v41

    .line 1219
    .end local v24    # "colorTransfer":I
    .local v3, "stereoMode":I
    .local v5, "colorRange":I
    .local v6, "colorSpace":I
    .local v8, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v15, "colorTransfer":I
    .local v17, "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v18, "projectionData":[B
    .local v20, "pixelWidthHeightRatio":F
    .local v21, "height":I
    .local v22, "width":I
    .local v23, "codecs":Ljava/lang/String;
    .local v25, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v26, "maxNumReorderSamples":I
    :goto_2
    move/from16 v24, v14

    .end local v14    # "atomType":I
    .local v24, "atomType":I
    sub-int v14, v11, v1

    if-ge v14, v2, :cond_3e

    .line 1220
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 1222
    .local v14, "childStartPosition":I
    move/from16 p1, v11

    .end local v11    # "childPosition":I
    .local p1, "childPosition":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 1223
    .local v11, "childAtomSize":I
    if-nez v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v27

    move/from16 p6, v3

    .end local v3    # "stereoMode":I
    .local p6, "stereoMode":I
    sub-int v3, v27, v1

    if-ne v3, v2, :cond_6

    .line 1225
    move/from16 v35, p6

    move/from16 v33, v5

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    move/from16 v27, v10

    move-object/from16 v34, v13

    move v5, v15

    const/4 v4, 0x0

    goto/16 :goto_25

    .line 1223
    .end local p6    # "stereoMode":I
    .restart local v3    # "stereoMode":I
    :cond_5
    move/from16 p6, v3

    .line 1227
    .end local v3    # "stereoMode":I
    .restart local p6    # "stereoMode":I
    :cond_6
    if-lez v11, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v3, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1228
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1229
    .local v1, "childAtomType":I
    const v3, 0x61766343

    if-ne v1, v3, :cond_a

    .line 1230
    if-nez v12, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1231
    const-string/jumbo v2, "video/avc"

    .line 1232
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v14, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1233
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v3

    .line 1234
    .local v3, "avcConfig":Landroidx/media3/extractor/AvcConfig;
    iget-object v12, v3, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 1235
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v13, v3, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v13, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    .line 1236
    if-nez v7, :cond_9

    .line 1237
    iget v13, v3, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .end local v20    # "pixelWidthHeightRatio":F
    .local v13, "pixelWidthHeightRatio":F
    goto :goto_5

    .line 1236
    .end local v13    # "pixelWidthHeightRatio":F
    .restart local v20    # "pixelWidthHeightRatio":F
    :cond_9
    move/from16 v13, v20

    .line 1239
    .end local v20    # "pixelWidthHeightRatio":F
    .restart local v13    # "pixelWidthHeightRatio":F
    :goto_5
    move-object/from16 v27, v2

    .end local v2    # "mimeType":Ljava/lang/String;
    .local v27, "mimeType":Ljava/lang/String;
    iget-object v2, v3, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 1240
    .end local v23    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    move-object/from16 v20, v2

    .end local v2    # "codecs":Ljava/lang/String;
    .local v20, "codecs":Ljava/lang/String;
    iget v2, v3, Landroidx/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    .line 1241
    .end local v26    # "maxNumReorderSamples":I
    .local v2, "maxNumReorderSamples":I
    iget v6, v3, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 1242
    iget v5, v3, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 1243
    iget v15, v3, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    .line 1244
    iget v9, v3, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 1245
    iget v3, v3, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 1246
    .end local v10    # "bitdepthChroma":I
    .local v3, "bitdepthChroma":I
    move/from16 v26, v2

    move v10, v3

    move-object/from16 v23, v20

    const/4 v4, 0x0

    move/from16 v3, p6

    move/from16 v20, v13

    move-object v13, v12

    move-object/from16 v12, v27

    goto/16 :goto_24

    .end local v2    # "maxNumReorderSamples":I
    .end local v3    # "bitdepthChroma":I
    .end local v27    # "mimeType":Ljava/lang/String;
    .restart local v10    # "bitdepthChroma":I
    .local v12, "mimeType":Ljava/lang/String;
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v20, "pixelWidthHeightRatio":F
    .restart local v23    # "codecs":Ljava/lang/String;
    .restart local v26    # "maxNumReorderSamples":I
    :cond_a
    const v2, 0x68766343

    if-ne v1, v2, :cond_e

    .line 1247
    if-nez v12, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1248
    const-string/jumbo v2, "video/hevc"

    .line 1249
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v14, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1250
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/HevcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v3

    .line 1251
    .local v3, "hevcConfig":Landroidx/media3/extractor/HevcConfig;
    iget-object v12, v3, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1252
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v13, v3, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v13, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    .line 1253
    if-nez v7, :cond_c

    .line 1254
    iget v13, v3, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .end local v20    # "pixelWidthHeightRatio":F
    .local v13, "pixelWidthHeightRatio":F
    goto :goto_7

    .line 1253
    .end local v13    # "pixelWidthHeightRatio":F
    .restart local v20    # "pixelWidthHeightRatio":F
    :cond_c
    move/from16 v13, v20

    .line 1256
    .end local v20    # "pixelWidthHeightRatio":F
    .restart local v13    # "pixelWidthHeightRatio":F
    :goto_7
    move-object/from16 v27, v2

    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v27    # "mimeType":Ljava/lang/String;
    iget v2, v3, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 1257
    .end local v26    # "maxNumReorderSamples":I
    .local v2, "maxNumReorderSamples":I
    move/from16 v20, v2

    .end local v2    # "maxNumReorderSamples":I
    .local v20, "maxNumReorderSamples":I
    iget-object v2, v3, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1258
    .end local v23    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    move-object/from16 v23, v2

    .end local v2    # "codecs":Ljava/lang/String;
    .restart local v23    # "codecs":Ljava/lang/String;
    iget v2, v3, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    move/from16 v30, v7

    const/4 v7, -0x1

    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .local v30, "pixelWidthHeightRatioFromPasp":Z
    if-eq v2, v7, :cond_d

    .line 1260
    iget v2, v3, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    .end local p6    # "stereoMode":I
    .local v2, "stereoMode":I
    goto :goto_8

    .line 1258
    .end local v2    # "stereoMode":I
    .restart local p6    # "stereoMode":I
    :cond_d
    move/from16 v2, p6

    .line 1262
    .end local p6    # "stereoMode":I
    .restart local v2    # "stereoMode":I
    :goto_8
    iget v6, v3, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 1263
    iget v5, v3, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 1264
    iget v7, v3, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 1265
    .end local v15    # "colorTransfer":I
    .local v7, "colorTransfer":I
    iget v9, v3, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 1266
    iget v10, v3, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 1267
    iget-object v3, v3, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1268
    .end local v8    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v3, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    move-object v8, v3

    move v15, v7

    move/from16 v26, v20

    move/from16 v7, v30

    const/4 v4, 0x0

    move v3, v2

    move/from16 v20, v13

    move-object v13, v12

    move-object/from16 v12, v27

    goto/16 :goto_24

    .end local v2    # "stereoMode":I
    .end local v3    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v27    # "mimeType":Ljava/lang/String;
    .end local v30    # "pixelWidthHeightRatioFromPasp":Z
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .restart local v8    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v12, "mimeType":Ljava/lang/String;
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "colorTransfer":I
    .local v20, "pixelWidthHeightRatio":F
    .restart local v26    # "maxNumReorderSamples":I
    .restart local p6    # "stereoMode":I
    :cond_e
    move/from16 v30, v7

    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v30    # "pixelWidthHeightRatioFromPasp":Z
    const v2, 0x6c687643

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1a

    .line 1270
    nop

    .line 1271
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1270
    const-string v7, "lhvC must follow hvcC atom"

    invoke-static {v2, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1272
    if-eqz v8, :cond_f

    iget-object v2, v8, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    .line 1273
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lt v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    .line 1272
    :goto_9
    const-string v3, "must have at least two layers"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1275
    add-int/lit8 v2, v14, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1276
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    invoke-static {v0, v2}, Landroidx/media3/extractor/HevcConfig;->parseLayered(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v2

    .line 1277
    .local v2, "lhevcConfig":Landroidx/media3/extractor/HevcConfig;
    iget v3, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    iget v7, v2, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    if-ne v3, v7, :cond_10

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    const-string v7, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1283
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_12

    .line 1284
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    if-ne v6, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :goto_b
    const-string v7, "colorSpace must be the same for both views"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1287
    :cond_12
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_14

    .line 1288
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    if-ne v5, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    :goto_c
    const-string v7, "colorRange must be the same for both views"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1291
    :cond_14
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_16

    .line 1292
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    if-ne v15, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    :goto_d
    const-string v7, "colorTransfer must be the same for both views"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1296
    :cond_16
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    if-ne v9, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    const-string v7, "bitdepthLuma must be the same for both views"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1299
    iget v3, v2, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    if-ne v10, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    const-string v7, "bitdepthChroma must be the same for both views"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1303
    const-string/jumbo v3, "video/mv-hevc"

    .line 1304
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v13, :cond_19

    .line 1306
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 1307
    invoke-virtual {v7, v13}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    iget-object v12, v2, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1308
    invoke-virtual {v7, v12}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 1309
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    goto :goto_10

    .line 1311
    :cond_19
    const-string v7, "initializationData must be already set from hvcC atom"

    const/4 v12, 0x0

    invoke-static {v12, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1314
    :goto_10
    iget-object v2, v2, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1315
    .end local v23    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    move-object/from16 v23, v2

    move-object v12, v3

    move/from16 v7, v30

    const/4 v4, 0x0

    move/from16 v3, p6

    goto/16 :goto_24

    .end local v2    # "codecs":Ljava/lang/String;
    .end local v3    # "mimeType":Ljava/lang/String;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v23    # "codecs":Ljava/lang/String;
    :cond_1a
    const v2, 0x76657875

    if-ne v1, v2, :cond_1f

    .line 1316
    invoke-static {v0, v14, v11}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoExtendedUsageBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    move-result-object v2

    .line 1317
    .local v2, "vexuData":Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    if-eqz v2, :cond_1d

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 1318
    if-eqz v8, :cond_1b

    iget-object v7, v8, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    if-lt v7, v3, :cond_1b

    .line 1320
    nop

    .line 1321
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->hasBothEyeViews()Z

    move-result v3

    .line 1320
    const-string v7, "both eye views must be marked as available"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1326
    nop

    .line 1327
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v3

    const/4 v7, 0x1

    xor-int/2addr v3, v7

    .line 1326
    const-string v7, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v3, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move/from16 v7, p6

    goto :goto_12

    .line 1329
    :cond_1b
    move/from16 v7, p6

    const/4 v3, -0x1

    .end local p6    # "stereoMode":I
    .local v7, "stereoMode":I
    if-ne v7, v3, :cond_1e

    .line 1331
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1332
    const/4 v3, 0x5

    goto :goto_11

    .line 1333
    :cond_1c
    const/4 v3, 0x4

    :goto_11
    nop

    .end local v7    # "stereoMode":I
    .local v3, "stereoMode":I
    goto :goto_13

    .line 1317
    .end local v3    # "stereoMode":I
    .restart local p6    # "stereoMode":I
    :cond_1d
    move/from16 v7, p6

    .line 1336
    .end local v2    # "vexuData":Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    .end local p6    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    :cond_1e
    :goto_12
    move v3, v7

    .end local v7    # "stereoMode":I
    .restart local v3    # "stereoMode":I
    :goto_13
    move/from16 v7, v30

    const/4 v4, 0x0

    goto/16 :goto_24

    .end local v3    # "stereoMode":I
    .restart local p6    # "stereoMode":I
    :cond_1f
    move/from16 v7, p6

    .end local p6    # "stereoMode":I
    .restart local v7    # "stereoMode":I
    const v2, 0x64766343

    if-eq v1, v2, :cond_3c

    const v2, 0x64767643

    if-ne v1, v2, :cond_20

    move/from16 v33, v5

    move/from16 v35, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    move/from16 v27, v10

    move-object/from16 v34, v13

    move v5, v15

    const/4 v4, 0x0

    goto/16 :goto_22

    .line 1342
    :cond_20
    const v2, 0x76706343

    if-ne v1, v2, :cond_26

    .line 1343
    if-nez v12, :cond_21

    const/4 v2, 0x1

    goto :goto_14

    :cond_21
    const/4 v2, 0x0

    :goto_14
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1344
    const v2, 0x76703038

    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    move-object/from16 v31, v8

    move/from16 v8, v24

    .end local v24    # "atomType":I
    .local v8, "atomType":I
    .local v31, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    if-ne v8, v2, :cond_22

    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    goto :goto_15

    :cond_22
    move-object v2, v3

    .line 1345
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    :goto_15
    add-int/lit8 v12, v14, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-byte v12, v12

    .line 1348
    .local v12, "profile":B
    move/from16 v24, v8

    .end local v8    # "atomType":I
    .restart local v24    # "atomType":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    int-to-byte v8, v8

    .line 1349
    .local v8, "level":B
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v29

    .line 1350
    .local v29, "byte3":I
    shr-int/lit8 v9, v29, 0x4

    .line 1351
    move v10, v9

    .line 1352
    shr-int/lit8 v32, v29, 0x1

    move/from16 v33, v10

    .end local v10    # "bitdepthChroma":I
    .local v33, "bitdepthChroma":I
    and-int/lit8 v10, v32, 0x7

    int-to-byte v10, v10

    .line 1353
    .local v10, "chromaSubsampling":B
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1355
    int-to-byte v3, v9

    .line 1356
    invoke-static {v12, v8, v3, v10}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildVp9CodecPrivateInitializationData(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 1359
    :cond_23
    and-int/lit8 v3, v29, 0x1

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    goto :goto_16

    :cond_24
    const/4 v3, 0x0

    .line 1360
    .local v3, "fullRangeFlag":Z
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v27

    .line 1361
    .local v27, "colorPrimaries":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v32

    .line 1362
    .local v32, "transferCharacteristics":I
    invoke-static/range {v27 .. v27}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v6

    .line 1363
    if-eqz v3, :cond_25

    const/16 v28, 0x1

    goto :goto_17

    :cond_25
    const/16 v28, 0x2

    :goto_17
    move/from16 v5, v28

    .line 1364
    nop

    .line 1365
    invoke-static/range {v32 .. v32}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    .line 1366
    .end local v8    # "level":B
    .end local v10    # "chromaSubsampling":B
    .end local v12    # "profile":B
    .end local v15    # "colorTransfer":I
    .end local v27    # "colorPrimaries":I
    .end local v29    # "byte3":I
    .end local v32    # "transferCharacteristics":I
    .local v3, "colorTransfer":I
    move-object v12, v2

    move v15, v3

    move v3, v7

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v10, v33

    const/4 v4, 0x0

    goto/16 :goto_24

    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "colorTransfer":I
    .end local v31    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v33    # "bitdepthChroma":I
    .local v8, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v10, "bitdepthChroma":I
    .local v12, "mimeType":Ljava/lang/String;
    .restart local v15    # "colorTransfer":I
    :cond_26
    move-object/from16 v31, v8

    .end local v8    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v31    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    const v2, 0x61763143

    if-ne v1, v2, :cond_27

    .line 1367
    const-string/jumbo v2, "video/av01"

    .line 1369
    .end local v12    # "mimeType":Ljava/lang/String;
    .restart local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v11, -0x8

    .line 1370
    .local v3, "childAtomBodySize":I
    new-array v8, v3, [B

    .line 1371
    .local v8, "initializationDataChunk":[B
    const/4 v12, 0x0

    invoke-virtual {v0, v8, v12, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1372
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .line 1374
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v13, v14, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1375
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v13

    .line 1377
    .local v13, "colorInfo":Landroidx/media3/common/ColorInfo;
    iget v9, v13, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1378
    iget v10, v13, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1379
    iget v6, v13, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1380
    iget v5, v13, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1381
    iget v3, v13, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 1382
    .end local v8    # "initializationDataChunk":[B
    .end local v13    # "colorInfo":Landroidx/media3/common/ColorInfo;
    .end local v15    # "colorTransfer":I
    .local v3, "colorTransfer":I
    move v15, v3

    move v3, v7

    move-object v13, v12

    move/from16 v7, v30

    move-object/from16 v8, v31

    const/4 v4, 0x0

    move-object v12, v2

    goto/16 :goto_24

    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "colorTransfer":I
    .local v12, "mimeType":Ljava/lang/String;
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "colorTransfer":I
    :cond_27
    const/4 v2, 0x0

    const v3, 0x636c6c69

    if-ne v1, v3, :cond_29

    .line 1383
    if-nez v25, :cond_28

    .line 1384
    invoke-static {}, Landroidx/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    move-object/from16 v2, v25

    goto :goto_18

    .line 1383
    :cond_28
    move-object/from16 v2, v25

    .line 1388
    .end local v25    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v2, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_18
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1389
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1390
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v2

    move v3, v7

    move/from16 v7, v30

    move-object/from16 v8, v31

    const/4 v4, 0x0

    goto/16 :goto_24

    .line 1391
    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v25    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_29
    const v3, 0x6d646376

    if-ne v1, v3, :cond_2b

    .line 1392
    if-nez v25, :cond_2a

    .line 1393
    invoke-static {}, Landroidx/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    move-object/from16 v2, v25

    goto :goto_19

    .line 1392
    :cond_2a
    move-object/from16 v2, v25

    .line 1397
    .end local v25    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v3

    .line 1398
    .local v3, "displayPrimariesGX":S
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v8

    .line 1399
    .local v8, "displayPrimariesGY":S
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    .line 1400
    .local v4, "displayPrimariesBX":S
    move/from16 v27, v10

    .end local v10    # "bitdepthChroma":I
    .local v27, "bitdepthChroma":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1401
    .local v10, "displayPrimariesBY":S
    move/from16 v32, v9

    .end local v9    # "bitdepthLuma":I
    .local v32, "bitdepthLuma":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 1402
    .local v9, "displayPrimariesRX":S
    move/from16 v33, v5

    .end local v5    # "colorRange":I
    .local v33, "colorRange":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v5

    .line 1403
    .local v5, "displayPrimariesRY":S
    move-object/from16 v34, v13

    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v34, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    .line 1404
    .local v13, "whitePointX":S
    move/from16 v35, v7

    .end local v7    # "stereoMode":I
    .local v35, "stereoMode":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 1405
    .local v7, "whitePointY":S
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v36

    .line 1406
    .local v36, "maxDisplayMasteringLuminance":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v38

    .line 1408
    .local v38, "minDisplayMasteringLuminance":J
    move/from16 v40, v15

    const/4 v15, 0x1

    .end local v15    # "colorTransfer":I
    .local v40, "colorTransfer":I
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1409
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1410
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1411
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1412
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1413
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1414
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1415
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1416
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1417
    const-wide/16 v28, 0x2710

    move/from16 p6, v3

    move/from16 v25, v4

    .end local v3    # "displayPrimariesGX":S
    .end local v4    # "displayPrimariesBX":S
    .local v25, "displayPrimariesBX":S
    .local p6, "displayPrimariesGX":S
    div-long v3, v36, v28

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1418
    div-long v3, v38, v28

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1419
    .end local v5    # "displayPrimariesRY":S
    .end local v7    # "whitePointY":S
    .end local v8    # "displayPrimariesGY":S
    .end local v9    # "displayPrimariesRX":S
    .end local v10    # "displayPrimariesBY":S
    .end local v13    # "whitePointX":S
    .end local v25    # "displayPrimariesBX":S
    .end local v36    # "maxDisplayMasteringLuminance":J
    .end local v38    # "minDisplayMasteringLuminance":J
    .end local p6    # "displayPrimariesGX":S
    move-object/from16 v25, v2

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move-object/from16 v13, v34

    move/from16 v3, v35

    move/from16 v15, v40

    const/4 v4, 0x0

    goto/16 :goto_24

    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v27    # "bitdepthChroma":I
    .end local v32    # "bitdepthLuma":I
    .end local v33    # "colorRange":I
    .end local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v35    # "stereoMode":I
    .end local v40    # "colorTransfer":I
    .local v5, "colorRange":I
    .local v7, "stereoMode":I
    .local v9, "bitdepthLuma":I
    .local v10, "bitdepthChroma":I
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "colorTransfer":I
    .local v25, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_2b
    move/from16 v33, v5

    move/from16 v35, v7

    move/from16 v32, v9

    move/from16 v27, v10

    move-object/from16 v34, v13

    move/from16 v40, v15

    const/4 v15, 0x1

    .end local v5    # "colorRange":I
    .end local v7    # "stereoMode":I
    .end local v9    # "bitdepthLuma":I
    .end local v10    # "bitdepthChroma":I
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "colorTransfer":I
    .restart local v27    # "bitdepthChroma":I
    .restart local v32    # "bitdepthLuma":I
    .restart local v33    # "colorRange":I
    .restart local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v35    # "stereoMode":I
    .restart local v40    # "colorTransfer":I
    const v3, 0x64323633

    if-ne v1, v3, :cond_2d

    .line 1420
    if-nez v12, :cond_2c

    move v3, v15

    goto :goto_1a

    :cond_2c
    move v3, v2

    :goto_1a
    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1421
    const-string/jumbo v2, "video/3gpp"

    move-object v12, v2

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move-object/from16 v13, v34

    move/from16 v3, v35

    move/from16 v15, v40

    const/4 v4, 0x0

    .end local v12    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    goto/16 :goto_24

    .line 1422
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v12    # "mimeType":Ljava/lang/String;
    :cond_2d
    const v3, 0x65736473

    if-ne v1, v3, :cond_30

    .line 1423
    if-nez v12, :cond_2e

    move v3, v15

    goto :goto_1b

    :cond_2e
    move v3, v2

    :goto_1b
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1424
    invoke-static {v0, v14}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v2

    .line 1425
    .end local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .local v2, "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$900(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v5

    .line 1427
    .local v5, "initializationDataBytes":[B
    if-eqz v5, :cond_2f

    .line 1428
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .end local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_1c

    .line 1427
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2f
    move-object/from16 v13, v34

    .line 1430
    .end local v5    # "initializationDataBytes":[B
    .end local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_1c
    move-object/from16 v19, v2

    move-object v12, v3

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move/from16 v3, v35

    move/from16 v15, v40

    goto/16 :goto_24

    .end local v2    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v19    # "esdsData":Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .restart local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_30
    const/4 v4, 0x0

    const v3, 0x70617370

    if-ne v1, v3, :cond_31

    .line 1431
    invoke-static {v0, v14}, Landroidx/media3/extractor/mp4/BoxParser;->parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F

    move-result v2

    .line 1432
    .end local v20    # "pixelWidthHeightRatio":F
    .local v2, "pixelWidthHeightRatio":F
    const/4 v3, 0x1

    move/from16 v20, v2

    move v7, v3

    move/from16 v10, v27

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move-object/from16 v13, v34

    move/from16 v3, v35

    move/from16 v15, v40

    .end local v30    # "pixelWidthHeightRatioFromPasp":Z
    .local v3, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_24

    .line 1433
    .end local v2    # "pixelWidthHeightRatio":F
    .end local v3    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v20    # "pixelWidthHeightRatio":F
    .restart local v30    # "pixelWidthHeightRatioFromPasp":Z
    :cond_31
    const v3, 0x73763364

    if-ne v1, v3, :cond_32

    .line 1434
    invoke-static {v0, v14, v11}, Landroidx/media3/extractor/mp4/BoxParser;->parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B

    move-result-object v2

    move-object/from16 v18, v2

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move-object/from16 v13, v34

    move/from16 v3, v35

    move/from16 v15, v40

    .end local v18    # "projectionData":[B
    .local v2, "projectionData":[B
    goto/16 :goto_24

    .line 1435
    .end local v2    # "projectionData":[B
    .restart local v18    # "projectionData":[B
    :cond_32
    const v3, 0x73743364

    if-ne v1, v3, :cond_34

    .line 1436
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 1437
    .local v2, "version":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1438
    if-nez v2, :cond_33

    .line 1439
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1440
    .local v3, "layout":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1d

    .line 1451
    :pswitch_0
    const/4 v5, 0x3

    .line 1452
    .end local v35    # "stereoMode":I
    .local v5, "stereoMode":I
    move v3, v5

    goto :goto_1e

    .line 1448
    .end local v5    # "stereoMode":I
    .restart local v35    # "stereoMode":I
    :pswitch_1
    const/4 v5, 0x2

    .line 1449
    .end local v35    # "stereoMode":I
    .restart local v5    # "stereoMode":I
    move v3, v5

    goto :goto_1e

    .line 1445
    .end local v5    # "stereoMode":I
    .restart local v35    # "stereoMode":I
    :pswitch_2
    const/4 v5, 0x1

    .line 1446
    .end local v35    # "stereoMode":I
    .restart local v5    # "stereoMode":I
    move v3, v5

    goto :goto_1e

    .line 1442
    .end local v5    # "stereoMode":I
    .restart local v35    # "stereoMode":I
    :pswitch_3
    const/4 v5, 0x0

    .line 1443
    .end local v35    # "stereoMode":I
    .restart local v5    # "stereoMode":I
    move v3, v5

    goto :goto_1e

    .line 1457
    .end local v2    # "version":I
    .end local v3    # "layout":I
    .end local v5    # "stereoMode":I
    .restart local v35    # "stereoMode":I
    :cond_33
    :goto_1d
    move/from16 v3, v35

    .end local v35    # "stereoMode":I
    .local v3, "stereoMode":I
    :goto_1e
    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move-object/from16 v13, v34

    move/from16 v15, v40

    goto/16 :goto_24

    .end local v3    # "stereoMode":I
    .restart local v35    # "stereoMode":I
    :cond_34
    const v3, 0x636f6c72

    if-ne v1, v3, :cond_3a

    .line 1464
    const/4 v3, -0x1

    if-ne v6, v3, :cond_39

    move/from16 v5, v40

    .end local v40    # "colorTransfer":I
    .local v5, "colorTransfer":I
    if-ne v5, v3, :cond_3b

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1466
    .local v3, "colorType":I
    const v7, 0x6e636c78

    if-eq v3, v7, :cond_36

    const v7, 0x6e636c63

    if-ne v3, v7, :cond_35

    goto :goto_1f

    .line 1484
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported color type: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "BoxParsers"

    invoke-static {v7, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 1469
    :cond_36
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 1470
    .local v7, "colorPrimaries":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 1471
    .local v8, "transferCharacteristics":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1477
    const/16 v10, 0x13

    if-ne v11, v10, :cond_37

    .line 1478
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_37

    move v2, v15

    goto :goto_20

    :cond_37
    nop

    .line 1479
    .local v2, "fullRangeFlag":Z
    :goto_20
    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v6

    .line 1480
    if-eqz v2, :cond_38

    move v9, v15

    .line 1481
    .end local v33    # "colorRange":I
    .local v9, "colorRange":I
    :cond_38
    nop

    .line 1482
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v2

    .line 1483
    .end local v5    # "colorTransfer":I
    .end local v7    # "colorPrimaries":I
    .end local v8    # "transferCharacteristics":I
    .local v2, "colorTransfer":I
    move v15, v2

    move v5, v9

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move-object/from16 v13, v34

    move/from16 v3, v35

    goto :goto_24

    .line 1464
    .end local v2    # "colorTransfer":I
    .end local v3    # "colorType":I
    .end local v9    # "colorRange":I
    .restart local v33    # "colorRange":I
    .restart local v40    # "colorTransfer":I
    :cond_39
    move/from16 v5, v40

    .end local v40    # "colorTransfer":I
    .restart local v5    # "colorTransfer":I
    goto :goto_21

    .line 1457
    .end local v5    # "colorTransfer":I
    .restart local v40    # "colorTransfer":I
    :cond_3a
    move/from16 v5, v40

    .line 1488
    .end local v40    # "colorTransfer":I
    .restart local v5    # "colorTransfer":I
    :cond_3b
    :goto_21
    move v15, v5

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move/from16 v5, v33

    move-object/from16 v13, v34

    move/from16 v3, v35

    goto :goto_24

    .line 1336
    .end local v27    # "bitdepthChroma":I
    .end local v31    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v32    # "bitdepthLuma":I
    .end local v33    # "colorRange":I
    .end local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v35    # "stereoMode":I
    .local v5, "colorRange":I
    .local v7, "stereoMode":I
    .local v8, "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v9, "bitdepthLuma":I
    .restart local v10    # "bitdepthChroma":I
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "colorTransfer":I
    :cond_3c
    move/from16 v33, v5

    move/from16 v35, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    move/from16 v27, v10

    move-object/from16 v34, v13

    move v5, v15

    const/4 v4, 0x0

    .line 1337
    .end local v7    # "stereoMode":I
    .end local v8    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v9    # "bitdepthLuma":I
    .end local v10    # "bitdepthChroma":I
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "colorTransfer":I
    .local v5, "colorTransfer":I
    .restart local v27    # "bitdepthChroma":I
    .restart local v31    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v32    # "bitdepthLuma":I
    .restart local v33    # "colorRange":I
    .restart local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v35    # "stereoMode":I
    :goto_22
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/DolbyVisionConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/DolbyVisionConfig;

    move-result-object v2

    .line 1338
    .local v2, "dolbyVisionConfig":Landroidx/media3/extractor/DolbyVisionConfig;
    if-eqz v2, :cond_3d

    .line 1339
    iget-object v15, v2, Landroidx/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1340
    .end local v23    # "codecs":Ljava/lang/String;
    .local v15, "codecs":Ljava/lang/String;
    const-string/jumbo v12, "video/dolby-vision"

    goto :goto_23

    .line 1338
    .end local v15    # "codecs":Ljava/lang/String;
    .restart local v23    # "codecs":Ljava/lang/String;
    :cond_3d
    move-object/from16 v15, v23

    .line 1342
    .end local v2    # "dolbyVisionConfig":Landroidx/media3/extractor/DolbyVisionConfig;
    .end local v23    # "codecs":Ljava/lang/String;
    .restart local v15    # "codecs":Ljava/lang/String;
    :goto_23
    move-object/from16 v23, v15

    move/from16 v10, v27

    move/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v9, v32

    move-object/from16 v13, v34

    move/from16 v3, v35

    move v15, v5

    move/from16 v5, v33

    .line 1488
    .end local v27    # "bitdepthChroma":I
    .end local v30    # "pixelWidthHeightRatioFromPasp":Z
    .end local v31    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v32    # "bitdepthLuma":I
    .end local v33    # "colorRange":I
    .end local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v35    # "stereoMode":I
    .local v3, "stereoMode":I
    .local v5, "colorRange":I
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .restart local v8    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v9    # "bitdepthLuma":I
    .restart local v10    # "bitdepthChroma":I
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v15, "colorTransfer":I
    .restart local v23    # "codecs":Ljava/lang/String;
    :goto_24
    add-int v11, p1, v11

    .line 1489
    .end local v1    # "childAtomType":I
    .end local v14    # "childStartPosition":I
    .end local p1    # "childPosition":I
    .local v11, "childPosition":I
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v14, v24

    goto/16 :goto_2

    .line 1219
    :cond_3e
    move/from16 v35, v3

    move/from16 v33, v5

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    move/from16 v27, v10

    move/from16 p1, v11

    move-object/from16 v34, v13

    move v5, v15

    const/4 v4, 0x0

    .line 1492
    .end local v3    # "stereoMode":I
    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .end local v8    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v9    # "bitdepthLuma":I
    .end local v10    # "bitdepthChroma":I
    .end local v11    # "childPosition":I
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "colorTransfer":I
    .local v5, "colorTransfer":I
    .restart local v27    # "bitdepthChroma":I
    .restart local v30    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v31    # "vpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .restart local v32    # "bitdepthLuma":I
    .restart local v33    # "colorRange":I
    .restart local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v35    # "stereoMode":I
    .restart local p1    # "childPosition":I
    :goto_25
    if-nez v12, :cond_3f

    .line 1493
    return-void

    .line 1496
    :cond_3f
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1498
    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1499
    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1500
    move-object/from16 v15, v23

    .end local v23    # "codecs":Ljava/lang/String;
    .local v15, "codecs":Ljava/lang/String;
    invoke-virtual {v1, v15}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1501
    move/from16 v3, v22

    .end local v22    # "width":I
    .local v3, "width":I
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1502
    move/from16 v7, v21

    .end local v21    # "height":I
    .local v7, "height":I
    invoke-virtual {v1, v7}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1503
    move/from16 v8, v20

    .end local v20    # "pixelWidthHeightRatio":F
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v1, v8}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1504
    move/from16 v9, p5

    invoke-virtual {v1, v9}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1505
    move-object/from16 v10, v18

    .end local v18    # "projectionData":[B
    .local v10, "projectionData":[B
    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1506
    move/from16 v11, v35

    .end local v35    # "stereoMode":I
    .local v11, "stereoMode":I
    invoke-virtual {v1, v11}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1507
    move-object/from16 v13, v34

    .end local v34    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v1, v13}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1508
    move/from16 v14, v26

    .end local v26    # "maxNumReorderSamples":I
    .local v14, "maxNumReorderSamples":I
    invoke-virtual {v1, v14}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1509
    move-object/from16 v4, v17

    .end local v17    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v4, "drmInitData":Landroidx/media3/common/DrmInitData;
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1514
    invoke-virtual {v0, v6}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1515
    move/from16 v2, v33

    .end local v33    # "colorRange":I
    .local v2, "colorRange":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1516
    invoke-virtual {v0, v5}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1517
    if-eqz v25, :cond_40

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move/from16 v33, v2

    move-object/from16 v2, v16

    goto :goto_26

    :cond_40
    move/from16 v33, v2

    const/4 v2, 0x0

    .end local v2    # "colorRange":I
    .restart local v33    # "colorRange":I
    :goto_26
    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1518
    move/from16 v2, v32

    .end local v32    # "bitdepthLuma":I
    .local v2, "bitdepthLuma":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1519
    move/from16 v2, v27

    .end local v27    # "bitdepthChroma":I
    .local v2, "bitdepthChroma":I
    .restart local v32    # "bitdepthLuma":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1520
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    .line 1512
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1522
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    if-eqz v19, :cond_41

    .line 1523
    nop

    .line 1524
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1200(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1525
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v16

    move/from16 v27, v2

    .end local v2    # "bitdepthChroma":I
    .restart local v27    # "bitdepthChroma":I
    invoke-static/range {v16 .. v17}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    goto :goto_27

    .line 1522
    .end local v27    # "bitdepthChroma":I
    .restart local v2    # "bitdepthChroma":I
    :cond_41
    move/from16 v27, v2

    .line 1528
    .end local v2    # "bitdepthChroma":I
    .restart local v27    # "bitdepthChroma":I
    :goto_27
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    move-object/from16 v2, p7

    iput-object v1, v2, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    .line 1529
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;
    .locals 11
    .param p0, "xyzBox"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 845
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v0

    .line 846
    .local v0, "length":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 847
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "location":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 850
    .local v2, "plusSignIndex":I
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 851
    .local v3, "minusSignIndex":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 853
    .local v4, "latitudeEndIndex":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 854
    .local v6, "latitude":F
    nop

    .line 855
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 856
    .local v7, "longitude":F
    new-instance v9, Landroidx/media3/common/Metadata;

    new-array v8, v8, [Landroidx/media3/common/Metadata$Entry;

    new-instance v10, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v10, v6, v7}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    aput-object v10, v8, v5

    invoke-direct {v9, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 857
    .end local v6    # "latitude":F
    .end local v7    # "longitude":F
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    .line 859
    .local v5, "exception":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v6, 0x0

    return-object v6
.end method
