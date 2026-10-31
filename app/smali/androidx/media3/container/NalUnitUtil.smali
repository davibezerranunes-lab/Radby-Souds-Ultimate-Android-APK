.class public final Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265NalHeader;,
        Landroidx/media3/container/NalUnitUtil$H265VpsData;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265LayerInfo;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormat;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;,
        Landroidx/media3/container/NalUnitUtil$PpsData;,
        Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final H264_NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final H264_NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final H264_NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final H264_NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final H264_NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final H264_NAL_UNIT_TYPE_PREFIX:I = 0xe

.field public static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field public static final H265_NAL_UNIT_TYPE_AUD:I = 0x23

.field public static final H265_NAL_UNIT_TYPE_BLA_W_LP:I = 0x10

.field public static final H265_NAL_UNIT_TYPE_CRA:I = 0x15

.field public static final H265_NAL_UNIT_TYPE_PPS:I = 0x22

.field public static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final H265_NAL_UNIT_TYPE_RASL_R:I = 0x9

.field public static final H265_NAL_UNIT_TYPE_SPS:I = 0x21

.field public static final H265_NAL_UNIT_TYPE_SUFFIX_SEI:I = 0x28

.field public static final H265_NAL_UNIT_TYPE_VPS:I = 0x20

.field private static final INVALID_ID:I = -0x1

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PREFIX:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 482
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    .line 488
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 511
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 517
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 2463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2465
    return-void
.end method

.method private static applyConformanceWindowToHeight(IIII)I
    .locals 2
    .param p0, "height"    # I
    .param p1, "chromaFormatIdc"    # I
    .param p2, "offsetTop"    # I
    .param p3, "offsetBottom"    # I

    .line 2097
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    .line 2098
    .local v0, "subHeightC":I
    :cond_0
    add-int v1, p2, p3

    mul-int/2addr v1, v0

    sub-int v1, p0, v1

    return v1
.end method

.method private static applyConformanceWindowToWidth(IIII)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "chromaFormatIdc"    # I
    .param p2, "offsetLeft"    # I
    .param p3, "offsetRight"    # I

    .line 2090
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2091
    .local v0, "subWidthC":I
    :cond_1
    :goto_0
    add-int v1, p2, p3

    mul-int/2addr v1, v0

    sub-int v1, p0, v1

    return v1
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .line 1880
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    .line 1881
    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 1882
    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    .line 1883
    return-void
.end method

.method private static createCodecStringFromH265SpsPalyoad(Landroidx/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 1937
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1938
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 1939
    .local v0, "maxSubLayersMinus1":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1940
    nop

    .line 1941
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v1

    .line 1946
    .local v1, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-boolean v3, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    iget-object v6, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v7, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 576
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 577
    .local v0, "length":I
    const/4 v1, 0x0

    .line 578
    .local v1, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 579
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_3

    .line 580
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 581
    .local v3, "value":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 582
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 584
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 585
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 587
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 589
    return-void

    .line 591
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v3, :cond_1

    .line 592
    add-int/lit8 v1, v1, 0x1

    .line 594
    :cond_1
    if-eqz v3, :cond_2

    .line 595
    const/4 v1, 0x0

    .line 597
    :cond_2
    nop

    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    .line 598
    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 601
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .line 1818
    sub-int v0, p2, p1

    .line 1820
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1821
    if-nez v0, :cond_1

    .line 1822
    return p2

    .line 1825
    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 1826
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1827
    add-int/lit8 v1, p1, -0x3

    return v1

    .line 1828
    :cond_2
    if-le v0, v2, :cond_3

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_3

    aget-byte v3, p0, p1

    if-ne v3, v2, :cond_3

    .line 1829
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1830
    add-int/lit8 v1, p1, -0x2

    return v1

    .line 1831
    :cond_3
    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 1835
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1836
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 1839
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 1842
    .local v4, "limit":I
    add-int/lit8 v5, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_7

    .line 1843
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    .line 1846
    :cond_5
    add-int/lit8 v6, v5, -0x2

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    aget-byte v6, p0, v5

    if-ne v6, v2, :cond_6

    .line 1847
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1848
    add-int/lit8 v1, v5, -0x2

    return v1

    .line 1852
    :cond_6
    add-int/lit8 v5, v5, -0x2

    .line 1842
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 1857
    .end local v5    # "i":I
    :cond_7
    nop

    .line 1858
    if-le v0, v3, :cond_9

    .line 1859
    add-int/lit8 v5, p2, -0x3

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_3

    .line 1860
    :cond_9
    if-ne v0, v3, :cond_b

    .line 1861
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_a

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_a

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_a

    move v5, v2

    goto :goto_3

    :cond_a
    move v5, v1

    goto :goto_3

    .line 1862
    :cond_b
    aget-boolean v5, p3, v2

    if-eqz v5, :cond_c

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_c

    move v5, v2

    goto :goto_3

    :cond_c
    move v5, v1

    :goto_3
    aput-boolean v5, p3, v1

    .line 1864
    nop

    .line 1865
    if-le v0, v2, :cond_e

    .line 1866
    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    move v5, v2

    goto :goto_4

    :cond_d
    move v5, v1

    goto :goto_4

    .line 1867
    :cond_e
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_f

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_f

    move v5, v2

    goto :goto_4

    :cond_f
    move v5, v1

    :goto_4
    aput-boolean v5, p3, v2

    .line 1869
    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_10

    move v1, v2

    :cond_10
    aput-boolean v1, p3, v3

    .line 1871
    return p2
.end method

.method private static findNalUnitPositions([B)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, "offset":I
    const/4 v1, 0x3

    new-array v1, v1, [Z

    .line 1923
    .local v1, "prefixFlags":[Z
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 1924
    .local v2, "nalUnitPositions":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 1925
    array-length v3, p0

    invoke-static {p0, v0, v3, v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v3

    .line 1926
    .local v3, "nalUnitOffset":I
    array-length v4, p0

    if-eq v3, v4, :cond_0

    .line 1927
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1929
    :cond_0
    add-int/lit8 v0, v3, 0x3

    .line 1930
    .end local v3    # "nalUnitOffset":I
    goto :goto_0

    .line 1931
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 1956
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 1957
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1958
    return v0

    .line 1956
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1961
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1897
    .local p0, "csdBuffers":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1898
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1899
    .local v1, "buffer":[B
    array-length v2, v1

    .line 1900
    .local v2, "limit":I
    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 1901
    invoke-static {v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnitPositions([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 1902
    .local v4, "nalUnitPositions":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1904
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    if-ge v6, v2, :cond_0

    .line 1906
    new-instance v6, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 1907
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v6, v1, v7, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1908
    .local v6, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v7

    .line 1909
    .local v7, "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    iget v8, v7, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    const/16 v9, 0x21

    if-ne v8, v9, :cond_0

    iget v8, v7, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    if-nez v8, :cond_0

    .line 1910
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->createCodecStringFromH265SpsPalyoad(Landroidx/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1902
    .end local v6    # "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    .end local v7    # "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1897
    .end local v1    # "buffer":[B
    .end local v2    # "limit":I
    .end local v4    # "nalUnitPositions":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1916
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 693
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 646
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isH264NalUnitDependedOn(B)Z
    .locals 5
    .param p0, "nalUnitHeaderFirstByte"    # B

    .line 656
    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x5

    .line 657
    .local v0, "nalRefIdc":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 661
    return v1

    .line 664
    :cond_0
    and-int/lit8 v2, p0, 0x1f

    .line 665
    .local v2, "nalUnitType":I
    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 668
    return v3

    .line 670
    :cond_1
    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    .line 672
    return v3

    .line 674
    :cond_2
    const/16 v4, 0xe

    if-ne v2, v4, :cond_3

    .line 677
    return v3

    .line 681
    :cond_3
    return v1
.end method

.method public static isNalUnitSei(Landroidx/media3/common/Format;B)Z
    .locals 3
    .param p0, "format"    # Landroidx/media3/common/Format;
    .param p1, "nalUnitHeaderFirstByte"    # B

    .line 629
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 630
    invoke-static {v0, v1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 632
    const-string/jumbo v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 633
    invoke-static {v0, v1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    and-int/lit8 v0, p1, 0x7e

    shr-int/2addr v0, v2

    const/16 v1, 0x27

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 629
    :goto_1
    return v2
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "nalUnitHeaderFirstByte"    # B

    .line 613
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 615
    :cond_0
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/2addr v0, v1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 613
    :goto_0
    return v1
.end method

.method private static parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .locals 4
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 936
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 937
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 938
    .local v1, "nalUnitType":I
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 939
    .local v0, "layerId":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 940
    .local v2, "temporalId":I
    new-instance v3, Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    invoke-direct {v3, v1, v0, v2}, Landroidx/media3/container/NalUnitUtil$H265NalHeader;-><init>(III)V

    return-object v3
.end method

.method private static parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .locals 18
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "profilePresentFlag"    # Z
    .param p2, "maxSubLayersMinus1"    # I
    .param p3, "prevProfileTierLevel"    # Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 2036
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 2037
    .local v3, "generalProfileSpace":I
    const/4 v4, 0x0

    .line 2038
    .local v4, "generalTierFlag":Z
    const/4 v5, 0x0

    .line 2039
    .local v5, "generalProfileIdc":I
    const/4 v6, 0x0

    .line 2040
    .local v6, "generalProfileCompatibilityFlags":I
    const/4 v7, 0x6

    new-array v7, v7, [I

    .line 2041
    .local v7, "constraintBytes":[I
    const/4 v8, 0x2

    const/16 v9, 0x8

    if-eqz p1, :cond_3

    .line 2042
    invoke-virtual {v0, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2043
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 2044
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 2045
    const/4 v6, 0x0

    .line 2046
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0x20

    if-ge v10, v11, :cond_1

    .line 2047
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2048
    const/4 v11, 0x1

    shl-int/2addr v11, v10

    or-int/2addr v6, v11

    .line 2046
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2051
    .end local v10    # "i":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    array-length v11, v7

    if-ge v10, v11, :cond_2

    .line 2052
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    aput v11, v7, v10

    .line 2051
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v10    # "i":I
    :cond_2
    goto :goto_2

    .line 2054
    :cond_3
    if-eqz v2, :cond_4

    .line 2055
    iget v3, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 2056
    iget-boolean v4, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 2057
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 2058
    iget v6, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 2059
    iget-object v7, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    .line 2061
    :cond_4
    :goto_2
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 2064
    .local v9, "generalLevelIdc":I
    const/4 v10, 0x0

    .line 2065
    .local v10, "toSkip":I
    const/4 v11, 0x0

    move v15, v10

    .end local v10    # "toSkip":I
    .local v11, "i":I
    .local v15, "toSkip":I
    :goto_3
    if-ge v11, v1, :cond_7

    .line 2066
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2067
    add-int/lit8 v15, v15, 0x58

    .line 2069
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2070
    add-int/lit8 v15, v15, 0x8

    .line 2065
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2073
    .end local v11    # "i":I
    :cond_7
    invoke-virtual {v0, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2074
    if-lez v1, :cond_8

    .line 2075
    rsub-int/lit8 v10, v1, 0x8

    mul-int/2addr v10, v8

    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2078
    :cond_8
    new-instance v8, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-object v10, v8

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move/from16 v17, v15

    .end local v15    # "toSkip":I
    .local v17, "toSkip":I
    move-object v15, v7

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;-><init>(IZII[II)V

    return-object v8
.end method

.method private static parseH265RepFormat(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265RepFormat;
    .locals 12
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2137
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 2138
    .local v1, "frameWidth":I
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 2139
    .local v0, "frameHeight":I
    const/4 v2, 0x0

    .line 2140
    .local v2, "chromaFormatIdc":I
    const/4 v3, 0x0

    .line 2141
    .local v3, "bitDepthLumaMinus8":I
    const/4 v4, 0x0

    .line 2142
    .local v4, "bitDepthChromaMinus8":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2143
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 2144
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 2145
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2147
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2148
    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 2150
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2151
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 2152
    .local v5, "confWinLeftOffset":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 2153
    .local v6, "confWinRightOffset":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 2154
    .local v7, "confWinTopOffset":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 2155
    .local v8, "confWinBottomOffset":I
    nop

    .line 2156
    invoke-static {v1, v2, v5, v6}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    move-result v1

    .line 2158
    nop

    .line 2159
    invoke-static {v0, v2, v7, v8}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    move-result v0

    .line 2162
    .end local v5    # "confWinLeftOffset":I
    .end local v6    # "confWinRightOffset":I
    .end local v7    # "confWinTopOffset":I
    .end local v8    # "confWinBottomOffset":I
    :cond_2
    new-instance v11, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    move-object v5, v11

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    move v10, v0

    invoke-direct/range {v5 .. v10}, Landroidx/media3/container/NalUnitUtil$H265RepFormat;-><init>(IIIII)V

    return-object v11
.end method

.method private static parseH265RepFormatsAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;I)Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    .locals 6
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "maxLayers"    # I

    .line 2108
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2109
    .local v0, "numRepFormats":I
    nop

    .line 2110
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 2111
    .local v2, "repFormats":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265RepFormat;>;"
    new-array v3, p1, [I

    .line 2112
    .local v3, "repFormatIndices":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2114
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->parseH265RepFormat(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2112
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2116
    .end local v4    # "i":I
    :cond_0
    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2117
    int-to-double v4, v0

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v1}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v1

    .line 2120
    .local v1, "bitLen":I
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, p1, :cond_1

    .line 2121
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    aput v5, v3, v4

    .line 2120
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2123
    .end local v1    # "bitLen":I
    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    .line 2124
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 2125
    add-int/lit8 v4, v0, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v3, v1

    .line 2124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2128
    .end local v1    # "i":I
    :cond_3
    :goto_3
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;-><init>(Ljava/util/List;[I)V

    return-object v1
.end method

.method public static parseH265Sei3dRefDisplayInfo([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    .locals 28
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1703
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x2

    .line 1704
    .local v1, "seiRbspPos":I
    add-int/lit8 v2, p2, -0x1

    .line 1705
    .local v2, "last1BitBytePos":I
    :goto_0
    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    if-le v2, v1, :cond_0

    .line 1706
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1708
    :cond_0
    aget-byte v3, v0, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    if-gt v2, v1, :cond_1

    goto/16 :goto_9

    .line 1712
    :cond_1
    new-instance v3, Landroidx/media3/container/ParsableNalUnitBitArray;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v3, v0, v1, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1715
    .local v3, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    :goto_1
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1717
    const/4 v5, 0x0

    .line 1718
    .local v5, "payloadType":I
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 1719
    .local v7, "nextByte":I
    :goto_2
    const/16 v8, 0xff

    if-ne v7, v8, :cond_2

    .line 1720
    add-int/lit16 v5, v5, 0xff

    .line 1721
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    goto :goto_2

    .line 1723
    :cond_2
    add-int/2addr v5, v7

    .line 1725
    const/4 v9, 0x0

    .line 1726
    .local v9, "payloadSize":I
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 1727
    :goto_3
    if-ne v7, v8, :cond_3

    .line 1728
    add-int/lit16 v9, v9, 0xff

    .line 1729
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    goto :goto_3

    .line 1731
    :cond_3
    add-int/2addr v9, v7

    .line 1732
    if-eqz v9, :cond_e

    invoke-virtual {v3, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_8

    .line 1736
    :cond_4
    const/16 v6, 0xb0

    if-ne v5, v6, :cond_d

    .line 1737
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 1738
    .local v6, "precRefDisplayWidth":I
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    .line 1739
    .local v8, "refViewingDistanceFlag":Z
    const/4 v10, 0x0

    .line 1740
    .local v10, "precRefViewingDist":I
    if-eqz v8, :cond_5

    .line 1741
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    move/from16 v20, v10

    goto :goto_4

    .line 1740
    :cond_5
    move/from16 v20, v10

    .line 1743
    .end local v10    # "precRefViewingDist":I
    .local v20, "precRefViewingDist":I
    :goto_4
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 1744
    .local v15, "numRefDisplaysMinus1":I
    const/4 v10, -0x1

    .line 1745
    .local v10, "leftViewId":I
    const/4 v11, -0x1

    .line 1746
    .local v11, "rightViewId":I
    const/4 v12, -0x1

    .line 1747
    .local v12, "exponentRefDisplayWidth":I
    const/4 v13, -0x1

    .line 1748
    .local v13, "mantissaRefDisplayWidth":I
    const/4 v14, -0x1

    .line 1749
    .local v14, "exponentRefViewingDist":I
    const/16 v16, -0x1

    .line 1750
    .local v16, "mantissaRefViewingDist":I
    const/16 v17, 0x0

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v16

    move/from16 v10, v17

    .end local v11    # "rightViewId":I
    .end local v12    # "exponentRefDisplayWidth":I
    .end local v13    # "mantissaRefDisplayWidth":I
    .end local v14    # "exponentRefViewingDist":I
    .end local v16    # "mantissaRefViewingDist":I
    .local v10, "i":I
    .local v21, "leftViewId":I
    .local v22, "rightViewId":I
    .local v23, "exponentRefDisplayWidth":I
    .local v24, "mantissaRefDisplayWidth":I
    .local v25, "exponentRefViewingDist":I
    .local v26, "mantissaRefViewingDist":I
    :goto_5
    if-gt v10, v15, :cond_c

    .line 1751
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 1752
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    .line 1753
    const/4 v11, 0x6

    invoke-virtual {v3, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 1754
    .end local v23    # "exponentRefDisplayWidth":I
    .restart local v12    # "exponentRefDisplayWidth":I
    const/16 v13, 0x3f

    if-ne v12, v13, :cond_6

    .line 1755
    return-object v4

    .line 1758
    :cond_6
    const/4 v14, 0x0

    if-nez v12, :cond_7

    .line 1759
    add-int/lit8 v4, v6, -0x1e

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_6

    .line 1760
    :cond_7
    add-int v4, v12, v6

    add-int/lit8 v4, v4, -0x1f

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_6
    nop

    .line 1761
    .local v4, "refDispWidthBits":I
    nop

    .line 1762
    invoke-virtual {v3, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v24

    .line 1763
    if-eqz v8, :cond_a

    .line 1764
    invoke-virtual {v3, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    .line 1765
    .end local v25    # "exponentRefViewingDist":I
    .local v11, "exponentRefViewingDist":I
    if-ne v11, v13, :cond_8

    .line 1766
    const/4 v13, 0x0

    return-object v13

    .line 1769
    :cond_8
    if-nez v11, :cond_9

    .line 1770
    add-int/lit8 v13, v20, -0x1e

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_7

    .line 1771
    :cond_9
    add-int v13, v11, v20

    add-int/lit8 v13, v13, -0x1f

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_7
    nop

    .line 1772
    .local v13, "refViewDistBits":I
    nop

    .line 1773
    invoke-virtual {v3, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    move/from16 v25, v11

    move/from16 v26, v14

    .line 1775
    .end local v11    # "exponentRefViewingDist":I
    .end local v13    # "refViewDistBits":I
    .restart local v25    # "exponentRefViewingDist":I
    :cond_a
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1776
    const/16 v11, 0xa

    invoke-virtual {v3, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1750
    .end local v4    # "refDispWidthBits":I
    :cond_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v23, v12

    const/4 v4, 0x0

    goto :goto_5

    .line 1780
    .end local v10    # "i":I
    .end local v12    # "exponentRefDisplayWidth":I
    .restart local v23    # "exponentRefDisplayWidth":I
    :cond_c
    new-instance v4, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    add-int/lit8 v13, v15, 0x1

    move-object v10, v4

    move v11, v6

    move/from16 v12, v20

    move/from16 v14, v21

    move/from16 v27, v15

    .end local v15    # "numRefDisplaysMinus1":I
    .local v27, "numRefDisplaysMinus1":I
    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    move/from16 v18, v25

    move/from16 v19, v26

    invoke-direct/range {v10 .. v19}, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;-><init>(IIIIIIIII)V

    return-object v4

    .line 1791
    .end local v5    # "payloadType":I
    .end local v6    # "precRefDisplayWidth":I
    .end local v7    # "nextByte":I
    .end local v8    # "refViewingDistanceFlag":Z
    .end local v9    # "payloadSize":I
    .end local v20    # "precRefViewingDist":I
    .end local v21    # "leftViewId":I
    .end local v22    # "rightViewId":I
    .end local v23    # "exponentRefDisplayWidth":I
    .end local v24    # "mantissaRefDisplayWidth":I
    .end local v25    # "exponentRefViewingDist":I
    .end local v26    # "mantissaRefViewingDist":I
    .end local v27    # "numRefDisplaysMinus1":I
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1733
    .restart local v5    # "payloadType":I
    .restart local v7    # "nextByte":I
    .restart local v9    # "payloadSize":I
    :cond_e
    :goto_8
    const/4 v4, 0x0

    return-object v4

    .line 1792
    .end local v5    # "payloadType":I
    .end local v7    # "nextByte":I
    .end local v9    # "payloadSize":I
    :cond_f
    return-object v4

    .line 1709
    .end local v3    # "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    :cond_10
    :goto_9
    return-object v4
.end method

.method public static parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 2
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I
    .param p3, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1440
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1441
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v0

    .line 1443
    .local v0, "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1, p2, v0, p3}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BIILandroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v1

    return-object v1
.end method

.method public static parseH265SpsNalUnitPayload([BIILandroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 35
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I
    .param p3, "nalHeader"    # Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .param p4, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1463
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v13, p0

    move/from16 v12, p1

    move/from16 v11, p2

    invoke-direct {v0, v13, v12, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    move-object v10, v0

    .line 1464
    .local v10, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1467
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 1468
    .local v9, "maxSubLayersMinus1":I
    iget v1, v14, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    if-ne v9, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v16, v1

    .line 1470
    .local v16, "multiLayerExtSpsFlag":Z
    const/4 v1, 0x0

    .line 1471
    .local v1, "layerIdInVps":I
    if-eqz v15, :cond_1

    iget-object v4, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1472
    iget v4, v14, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    iget-object v5, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1473
    .local v4, "layerId":I
    iget-object v5, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v1, v5, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    move/from16 v17, v1

    goto :goto_1

    .line 1475
    .end local v4    # "layerId":I
    :cond_1
    move/from16 v17, v1

    .end local v1    # "layerIdInVps":I
    .local v17, "layerIdInVps":I
    :goto_1
    const/4 v1, 0x0

    .line 1476
    .local v1, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    if-nez v16, :cond_2

    .line 1477
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1478
    nop

    .line 1479
    const/4 v4, 0x0

    invoke-static {v10, v3, v9, v4}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_2

    .line 1484
    :cond_2
    if-eqz v15, :cond_3

    .line 1485
    iget-object v4, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v4, v4, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->indices:[I

    aget v4, v4, v17

    .line 1486
    .local v4, "profileTierLevelIdx":I
    iget-object v5, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v5, v5, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 1487
    iget-object v5, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v5, v5, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    .line 1488
    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-object/from16 v18, v1

    goto :goto_2

    .line 1492
    .end local v4    # "profileTierLevelIdx":I
    :cond_3
    move-object/from16 v18, v1

    .end local v1    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v18, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :goto_2
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 1493
    .local v19, "seqParameterSetId":I
    const/4 v1, 0x0

    .line 1494
    .local v1, "chromaFormatIdc":I
    const/4 v4, 0x0

    .line 1495
    .local v4, "frameWidth":I
    const/4 v5, 0x0

    .line 1496
    .local v5, "frameHeight":I
    const/4 v6, 0x0

    .line 1497
    .local v6, "bitDepthLumaMinus8":I
    const/4 v7, 0x0

    .line 1498
    .local v7, "bitDepthChromaMinus8":I
    const/4 v8, -0x1

    .line 1499
    .local v8, "spsRepFormatIdx":I
    const/16 v2, 0x8

    if-eqz v16, :cond_7

    .line 1500
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1501
    invoke-virtual {v10, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 1503
    :cond_4
    if-eqz v15, :cond_6

    iget-object v3, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    if-eqz v3, :cond_6

    .line 1504
    const/4 v3, -0x1

    if-ne v8, v3, :cond_5

    .line 1505
    iget-object v2, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v2, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->indices:[I

    aget v2, v2, v17

    move v8, v2

    .line 1507
    :cond_5
    if-eq v8, v3, :cond_6

    iget-object v2, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v2, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    .line 1508
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-le v2, v8, :cond_6

    .line 1509
    iget-object v2, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v2, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    .line 1510
    .local v2, "repFormat":Landroidx/media3/container/NalUnitUtil$H265RepFormat;
    iget v1, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->chromaFormatIdc:I

    .line 1511
    iget v4, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->width:I

    .line 1512
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->height:I

    .line 1513
    iget v6, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthLumaMinus8:I

    .line 1514
    iget v7, v2, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthChromaMinus8:I

    .line 1515
    .end local v2    # "repFormat":Landroidx/media3/container/NalUnitUtil$H265RepFormat;
    move/from16 v24, v1

    move/from16 v25, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    goto :goto_4

    .line 1539
    :cond_6
    move/from16 v24, v1

    move/from16 v25, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    goto :goto_4

    .line 1518
    :cond_7
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 1519
    if-ne v1, v0, :cond_8

    .line 1520
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1522
    :cond_8
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 1523
    .end local v4    # "frameWidth":I
    .local v2, "frameWidth":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 1524
    .end local v5    # "frameHeight":I
    .local v3, "frameHeight":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1525
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 1526
    .local v4, "confWinLeftOffset":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 1527
    .local v5, "confWinRightOffset":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 1528
    .local v0, "confWinTopOffset":I
    move/from16 v24, v6

    .end local v6    # "bitDepthLumaMinus8":I
    .local v24, "bitDepthLumaMinus8":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 1529
    .local v6, "confWinBottomOffset":I
    nop

    .line 1530
    invoke-static {v2, v1, v4, v5}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    move-result v2

    .line 1532
    nop

    .line 1533
    invoke-static {v3, v1, v0, v6}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    move-result v3

    move v4, v2

    move v5, v3

    goto :goto_3

    .line 1524
    .end local v0    # "confWinTopOffset":I
    .end local v4    # "confWinLeftOffset":I
    .end local v5    # "confWinRightOffset":I
    .end local v24    # "bitDepthLumaMinus8":I
    .local v6, "bitDepthLumaMinus8":I
    :cond_9
    move/from16 v24, v6

    .end local v6    # "bitDepthLumaMinus8":I
    .restart local v24    # "bitDepthLumaMinus8":I
    move v4, v2

    move v5, v3

    .line 1536
    .end local v2    # "frameWidth":I
    .end local v3    # "frameHeight":I
    .local v4, "frameWidth":I
    .local v5, "frameHeight":I
    :goto_3
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 1537
    .end local v24    # "bitDepthLumaMinus8":I
    .restart local v6    # "bitDepthLumaMinus8":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    move/from16 v24, v1

    move/from16 v25, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    .line 1539
    .end local v1    # "chromaFormatIdc":I
    .end local v4    # "frameWidth":I
    .end local v6    # "bitDepthLumaMinus8":I
    .end local v7    # "bitDepthChromaMinus8":I
    .end local v8    # "spsRepFormatIdx":I
    .local v24, "chromaFormatIdc":I
    .local v25, "frameWidth":I
    .local v26, "bitDepthLumaMinus8":I
    .local v27, "bitDepthChromaMinus8":I
    .local v28, "spsRepFormatIdx":I
    :goto_4
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v29

    .line 1540
    .local v29, "log2MaxPicOrderCntLsbMinus4":I
    const/4 v0, -0x1

    .line 1541
    .local v0, "maxNumReorderPics":I
    if-nez v16, :cond_c

    .line 1543
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move v2, v9

    :goto_5
    move v1, v2

    .local v1, "i":I
    :goto_6
    if-gt v1, v9, :cond_b

    .line 1544
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1546
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1547
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1543
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move/from16 v20, v0

    goto :goto_7

    .line 1541
    .end local v1    # "i":I
    :cond_c
    move/from16 v20, v0

    .line 1550
    .end local v0    # "maxNumReorderPics":I
    .local v20, "maxNumReorderPics":I
    :goto_7
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1551
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1552
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1553
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1554
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1555
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1556
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1557
    const/4 v0, 0x0

    .line 1558
    .local v0, "inferScalingListFlag":Z
    if-eqz v16, :cond_d

    .line 1559
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 1561
    :cond_d
    if-eqz v0, :cond_e

    .line 1562
    const/4 v1, 0x6

    invoke-virtual {v10, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_8

    .line 1563
    :cond_e
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1564
    invoke-static {v10}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 1567
    .end local v0    # "inferScalingListFlag":Z
    :cond_f
    :goto_8
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1568
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1570
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1571
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1572
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1573
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1575
    :cond_10
    invoke-static {v10}, Landroidx/media3/container/NalUnitUtil;->skipH265ShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 1576
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1577
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 1578
    .local v1, "numLongTermRefPicsSps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_11

    .line 1579
    add-int/lit8 v3, v29, 0x4

    .line 1581
    .local v3, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1578
    .end local v3    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1584
    .end local v1    # "numLongTermRefPicsSps":I
    .end local v2    # "i":I
    :cond_11
    invoke-virtual {v10, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1585
    const/4 v1, -0x1

    .line 1586
    .local v1, "colorSpace":I
    const/4 v2, -0x1

    .line 1587
    .local v2, "colorRange":I
    const/4 v3, -0x1

    .line 1588
    .local v3, "colorTransfer":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1589
    .local v4, "pixelWidthHeightRatio":F
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1590
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1591
    const/16 v6, 0x8

    invoke-virtual {v10, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 1592
    .local v7, "aspectRatioIdc":I
    const/16 v6, 0xff

    if-ne v7, v6, :cond_13

    .line 1593
    const/16 v6, 0x10

    invoke-virtual {v10, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 1594
    .local v8, "sarWidth":I
    invoke-virtual {v10, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 1595
    .local v6, "sarHeight":I
    if-eqz v8, :cond_12

    if-eqz v6, :cond_12

    .line 1596
    int-to-float v0, v8

    move/from16 v31, v1

    .end local v1    # "colorSpace":I
    .local v31, "colorSpace":I
    int-to-float v1, v6

    div-float v4, v0, v1

    goto :goto_a

    .line 1595
    .end local v31    # "colorSpace":I
    .restart local v1    # "colorSpace":I
    :cond_12
    move/from16 v31, v1

    .line 1598
    .end local v1    # "colorSpace":I
    .end local v6    # "sarHeight":I
    .end local v8    # "sarWidth":I
    .restart local v31    # "colorSpace":I
    :goto_a
    goto :goto_b

    .end local v31    # "colorSpace":I
    .restart local v1    # "colorSpace":I
    :cond_13
    move/from16 v31, v1

    .end local v1    # "colorSpace":I
    .restart local v31    # "colorSpace":I
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v7, v0, :cond_14

    .line 1599
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v7

    move v4, v0

    .end local v4    # "pixelWidthHeightRatio":F
    .local v0, "pixelWidthHeightRatio":F
    goto :goto_b

    .line 1601
    .end local v0    # "pixelWidthHeightRatio":F
    .restart local v4    # "pixelWidthHeightRatio":F
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NalUnitUtil"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1590
    .end local v7    # "aspectRatioIdc":I
    .end local v31    # "colorSpace":I
    .restart local v1    # "colorSpace":I
    :cond_15
    move/from16 v31, v1

    .line 1604
    .end local v1    # "colorSpace":I
    .restart local v31    # "colorSpace":I
    :goto_b
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1605
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1607
    :cond_16
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1608
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1610
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v30, 0x1

    goto :goto_c

    :cond_17
    const/16 v30, 0x2

    :goto_c
    move/from16 v0, v30

    .line 1611
    .end local v2    # "colorRange":I
    .local v0, "colorRange":I
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1612
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 1613
    .local v2, "colorPrimaries":I
    invoke-virtual {v10, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 1614
    .local v6, "transferCharacteristics":I
    invoke-virtual {v10, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1616
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v1

    .line 1617
    .end local v31    # "colorSpace":I
    .restart local v1    # "colorSpace":I
    nop

    .line 1618
    invoke-static {v6}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v2

    .line 1619
    .end local v3    # "colorTransfer":I
    .end local v6    # "transferCharacteristics":I
    .local v2, "colorTransfer":I
    move v3, v2

    move v2, v0

    goto :goto_d

    .line 1611
    .end local v1    # "colorSpace":I
    .end local v2    # "colorTransfer":I
    .restart local v3    # "colorTransfer":I
    .restart local v31    # "colorSpace":I
    :cond_18
    move v2, v0

    move/from16 v1, v31

    goto :goto_d

    .line 1620
    .end local v0    # "colorRange":I
    .local v2, "colorRange":I
    :cond_19
    if-eqz v15, :cond_1a

    iget-object v0, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    if-eqz v0, :cond_1a

    .line 1621
    iget-object v0, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v0, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->indices:[I

    aget v0, v0, v17

    .line 1622
    .local v0, "videoSignalInfoIdx":I
    iget-object v1, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v1, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-le v1, v0, :cond_1a

    .line 1623
    iget-object v1, v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v1, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    .line 1624
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    .line 1625
    .local v1, "videoSignalInfo":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    iget v6, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorSpace:I

    .line 1626
    .end local v31    # "colorSpace":I
    .local v6, "colorSpace":I
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorRange:I

    .line 1627
    iget v3, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorTransfer:I

    move v1, v6

    goto :goto_d

    .line 1630
    .end local v0    # "videoSignalInfoIdx":I
    .end local v1    # "videoSignalInfo":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    .end local v6    # "colorSpace":I
    .restart local v31    # "colorSpace":I
    :cond_1a
    move/from16 v1, v31

    .end local v31    # "colorSpace":I
    .local v1, "colorSpace":I
    :goto_d
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1631
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1632
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1634
    :cond_1b
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1635
    invoke-virtual {v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1638
    mul-int/lit8 v5, v5, 0x2

    move/from16 v31, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v30, v5

    goto :goto_e

    .line 1635
    :cond_1c
    move/from16 v31, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v30, v5

    goto :goto_e

    .line 1589
    :cond_1d
    move/from16 v31, v1

    .end local v1    # "colorSpace":I
    .restart local v31    # "colorSpace":I
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v30, v5

    .line 1642
    .end local v2    # "colorRange":I
    .end local v3    # "colorTransfer":I
    .end local v4    # "pixelWidthHeightRatio":F
    .end local v5    # "frameHeight":I
    .local v21, "colorRange":I
    .local v22, "colorTransfer":I
    .local v23, "pixelWidthHeightRatio":F
    .local v30, "frameHeight":I
    :goto_e
    new-instance v32, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, v24

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v6, v19

    move/from16 v7, v25

    move/from16 v8, v30

    move/from16 v33, v9

    .end local v9    # "maxSubLayersMinus1":I
    .local v33, "maxSubLayersMinus1":I
    move/from16 v9, v23

    move-object/from16 v34, v10

    .end local v10    # "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    .local v34, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    move/from16 v10, v20

    move/from16 v11, v31

    move/from16 v12, v21

    move/from16 v13, v22

    invoke-direct/range {v0 .. v13}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V

    return-object v32
.end method

.method private static parseH265VideoSignalInfo(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    .locals 4
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2295
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2298
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2300
    .local v0, "colorRange":I
    :goto_0
    nop

    .line 2301
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    .line 2303
    .local v2, "colorSpace":I
    nop

    .line 2305
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2304
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    .line 2306
    .local v3, "colorTransfer":I
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2308
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;-><init>(III)V

    return-object v1
.end method

.method private static parseH265VideoSignalInfosAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;II[I)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    .locals 11
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "maxLayers"    # I
    .param p2, "numLayerSets"    # I
    .param p3, "maxSubLayersInLayerSet"    # [I

    .line 2235
    const/4 v0, 0x1

    .line 2236
    .local v0, "crossLayerIrapAlignedFlag":Z
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2237
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 2239
    :cond_0
    if-eqz v0, :cond_1

    .line 2240
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2243
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 2244
    .local v1, "bitRatePresentVpsFlag":Z
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 2245
    .local v2, "picRatePresentVpsFlag":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_8

    .line 2248
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_8

    .line 2249
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    aget v5, p3, v3

    if-ge v4, v5, :cond_7

    .line 2250
    const/4 v5, 0x0

    .line 2251
    .local v5, "bitRatePresentFlag":Z
    const/4 v6, 0x0

    .line 2252
    .local v6, "picRatePresentFlag":Z
    if-eqz v1, :cond_3

    .line 2253
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    .line 2255
    :cond_3
    if-eqz v2, :cond_4

    .line 2256
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 2258
    :cond_4
    if-eqz v5, :cond_5

    .line 2259
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2261
    :cond_5
    if-eqz v6, :cond_6

    .line 2262
    const/16 v7, 0x12

    invoke-virtual {p0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2249
    .end local v5    # "bitRatePresentFlag":Z
    .end local v6    # "picRatePresentFlag":Z
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2248
    .end local v4    # "j":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2267
    .end local v3    # "i":I
    :cond_8
    move v3, p1

    .line 2268
    .local v3, "numVideoSignalInfos":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 2269
    .local v4, "videoSignalInfoIdxPresentFlag":Z
    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    .line 2270
    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 2272
    :cond_9
    nop

    .line 2273
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 2274
    .local v7, "videoSignalInfos":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;>;"
    new-array v8, p1, [I

    .line 2275
    .local v8, "videoSignalInfoIdices":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_a

    .line 2277
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->parseH265VideoSignalInfo(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2275
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2279
    .end local v9    # "i":I
    :cond_a
    if-eqz v4, :cond_b

    if-le v3, v6, :cond_b

    .line 2282
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, p1, :cond_b

    .line 2283
    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    aput v9, v8, v6

    .line 2282
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2286
    .end local v6    # "i":I
    :cond_b
    new-instance v5, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;-><init>(Ljava/util/List;[I)V

    return-object v5
.end method

.method public static parseH265VpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 3
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 923
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 924
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v1

    .line 925
    .local v1, "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    invoke-static {v0, v1}, Landroidx/media3/container/NalUnitUtil;->parseH265VpsNalUnitPayload(Landroidx/media3/container/ParsableNalUnitBitArray;Landroidx/media3/container/NalUnitUtil$H265NalHeader;)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    move-result-object v2

    return-object v2
.end method

.method private static parseH265VpsNalUnitPayload(Landroidx/media3/container/ParsableNalUnitBitArray;Landroidx/media3/container/NalUnitUtil$H265NalHeader;)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 63
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "nalHeader"    # Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 949
    move-object/from16 v0, p0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 951
    .local v2, "baseLayerInternalFlag":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 952
    .local v3, "baseLayerAvailableFlag":Z
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 954
    .local v5, "maxLayers":I
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 955
    .local v8, "maxSubLayersMinus1":I
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 957
    nop

    .line 958
    const/4 v9, 0x0

    invoke-static {v0, v6, v8, v9}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v9

    .line 965
    .local v9, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v8

    .local v10, "i":I
    :goto_0
    if-gt v10, v8, :cond_1

    .line 966
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 965
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 971
    .end local v10    # "i":I
    :cond_1
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 972
    .local v10, "maxLayerId":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/2addr v12, v6

    .line 974
    .local v12, "numLayerSets":I
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 975
    .local v13, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    new-instance v14, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    new-array v15, v6, [I

    invoke-direct {v14, v13, v15}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    move-object/from16 v17, v14

    .line 980
    .local v17, "baseLayerProfileTierLevelsAndIndices":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;
    const/4 v14, 0x2

    if-lt v5, v14, :cond_2

    if-lt v12, v14, :cond_2

    move v15, v6

    goto :goto_1

    :cond_2
    move v15, v11

    :goto_1
    move/from16 v20, v15

    .line 983
    .local v20, "haveEnoughLayerSets":Z
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move v15, v6

    goto :goto_2

    :cond_3
    move v15, v11

    :goto_2
    move/from16 v21, v15

    .line 986
    .local v21, "baseLayerIncluded":Z
    add-int/lit8 v15, v10, 0x1

    if-lt v15, v5, :cond_4

    move v15, v6

    goto :goto_3

    :cond_4
    move v15, v11

    :goto_3
    move/from16 v22, v15

    .line 987
    .local v22, "haveLargeEnoughMaxLayerIdInNuh":Z
    if-eqz v20, :cond_59

    if-eqz v21, :cond_59

    if-nez v22, :cond_5

    move/from16 v28, v2

    move/from16 v26, v3

    move/from16 v58, v5

    move/from16 v53, v8

    move-object/from16 v32, v9

    move v14, v10

    move v4, v12

    move-object/from16 v27, v13

    goto/16 :goto_3f

    .line 998
    :cond_5
    add-int/lit8 v15, v10, 0x1

    new-array v1, v14, [I

    aput v15, v1, v6

    aput v12, v1, v11

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 999
    .local v1, "layerSetLayerIdList":[[I
    new-array v15, v12, [I

    .line 1000
    .local v15, "numLayersInIdList":[I
    new-array v4, v12, [I

    .line 1002
    .local v4, "layerSetMaxLayerId":[I
    aget-object v19, v1, v11

    aput v11, v19, v11

    .line 1003
    aput v6, v15, v11

    .line 1004
    aput v11, v4, v11

    .line 1006
    const/16 v19, 0x1

    move/from16 v14, v19

    .local v14, "i":I
    :goto_4
    if-ge v14, v12, :cond_8

    .line 1007
    const/16 v19, 0x0

    .line 1008
    .local v19, "n":I
    const/16 v24, 0x0

    move/from16 v7, v24

    .local v7, "j":I
    :goto_5
    if-gt v7, v10, :cond_7

    .line 1009
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1010
    aget-object v25, v1, v14

    add-int/lit8 v26, v19, 0x1

    .end local v19    # "n":I
    .local v26, "n":I
    aput v7, v25, v19

    .line 1011
    aput v7, v4, v14

    move/from16 v19, v26

    .line 1013
    .end local v26    # "n":I
    .restart local v19    # "n":I
    :cond_6
    aput v19, v15, v14

    .line 1008
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1006
    .end local v7    # "j":I
    .end local v19    # "n":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x3

    goto :goto_4

    .line 1017
    .end local v14    # "i":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1018
    const/16 v7, 0x40

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1022
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 1023
    .local v7, "numHrdParameters":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    if-ge v14, v7, :cond_c

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1025
    if-eqz v14, :cond_b

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_a

    goto :goto_7

    :cond_a
    move v6, v11

    goto :goto_8

    :cond_b
    :goto_7
    nop

    .line 1025
    :goto_8
    invoke-static {v0, v6, v8}, Landroidx/media3/container/NalUnitUtil;->skipH265HrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;ZI)V

    .line 1023
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_6

    .line 1031
    .end local v7    # "numHrdParameters":I
    .end local v14    # "i":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1033
    new-instance v6, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object v14, v6

    move-object v7, v15

    .end local v15    # "numLayersInIdList":[I
    .local v7, "numLayersInIdList":[I
    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v19}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v6

    .line 1041
    .end local v7    # "numLayersInIdList":[I
    .restart local v15    # "numLayersInIdList":[I
    :cond_d
    move-object v7, v15

    .end local v15    # "numLayersInIdList":[I
    .restart local v7    # "numLayersInIdList":[I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 1044
    nop

    .line 1045
    invoke-static {v0, v11, v8, v9}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v6

    .line 1048
    .local v6, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 1049
    .local v14, "splittingFlag":Z
    const/16 v15, 0x10

    new-array v11, v15, [Z

    .line 1050
    .local v11, "scalabilityMaskFlag":[Z
    const/16 v26, 0x0

    .line 1051
    .local v26, "numScalabilityTypes":I
    const/16 v27, 0x0

    move/from16 v28, v2

    move/from16 v2, v26

    move/from16 v26, v3

    move/from16 v3, v27

    .local v2, "numScalabilityTypes":I
    .local v3, "i":I
    .local v26, "baseLayerAvailableFlag":Z
    .local v28, "baseLayerInternalFlag":Z
    :goto_9
    if-ge v3, v15, :cond_f

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v27

    aput-boolean v27, v11, v3

    .line 1053
    aget-boolean v27, v11, v3

    if-eqz v27, :cond_e

    .line 1054
    add-int/lit8 v2, v2, 0x1

    .line 1051
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1061
    .end local v3    # "i":I
    :cond_f
    if-eqz v2, :cond_58

    const/4 v3, 0x1

    aget-boolean v27, v11, v3

    if-nez v27, :cond_10

    move-object/from16 v62, v1

    move/from16 v18, v2

    move-object/from16 v31, v4

    move/from16 v58, v5

    move-object/from16 v33, v6

    move/from16 v53, v8

    move-object/from16 v32, v9

    move-object/from16 v34, v11

    move v4, v12

    move-object/from16 v27, v13

    move/from16 v48, v14

    move v14, v10

    goto/16 :goto_3e

    .line 1070
    :cond_10
    new-array v3, v2, [I

    .line 1071
    .local v3, "dimensionIdLenMinus1":[I
    const/16 v27, 0x0

    move/from16 v15, v27

    .local v15, "i":I
    :goto_a
    move-object/from16 v27, v13

    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v27, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    sub-int v13, v2, v14

    if-ge v15, v13, :cond_11

    .line 1072
    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v30

    aput v30, v3, v15

    .line 1071
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v27

    goto :goto_a

    .line 1074
    .end local v15    # "i":I
    :cond_11
    add-int/lit8 v13, v2, 0x1

    new-array v13, v13, [I

    .line 1075
    .local v13, "dimBitOffset":[I
    if-eqz v14, :cond_14

    .line 1076
    const/4 v15, 0x1

    .restart local v15    # "i":I
    :goto_b
    if-ge v15, v2, :cond_13

    .line 1077
    const/16 v30, 0x0

    move-object/from16 v31, v4

    move/from16 v4, v30

    .local v4, "j":I
    .local v31, "layerSetMaxLayerId":[I
    :goto_c
    if-ge v4, v15, :cond_12

    .line 1078
    aget v30, v13, v15

    aget v32, v3, v4

    const/16 v19, 0x1

    add-int/lit8 v32, v32, 0x1

    add-int v30, v30, v32

    aput v30, v13, v15

    .line 1077
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1076
    .end local v4    # "j":I
    :cond_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v31

    goto :goto_b

    .end local v31    # "layerSetMaxLayerId":[I
    .local v4, "layerSetMaxLayerId":[I
    :cond_13
    move-object/from16 v31, v4

    .line 1081
    .end local v4    # "layerSetMaxLayerId":[I
    .end local v15    # "i":I
    .restart local v31    # "layerSetMaxLayerId":[I
    const/4 v4, 0x6

    aput v4, v13, v2

    goto :goto_d

    .line 1075
    .end local v31    # "layerSetMaxLayerId":[I
    .restart local v4    # "layerSetMaxLayerId":[I
    :cond_14
    move-object/from16 v31, v4

    .line 1084
    .end local v4    # "layerSetMaxLayerId":[I
    .restart local v31    # "layerSetMaxLayerId":[I
    :goto_d
    const/4 v4, 0x2

    new-array v15, v4, [I

    const/4 v4, 0x1

    aput v2, v15, v4

    const/4 v4, 0x0

    aput v5, v15, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 1087
    .local v4, "dimensionId":[[I
    new-array v15, v5, [I

    .line 1088
    .local v15, "layerIdInNuh":[I
    const/16 v25, 0x0

    aput v25, v15, v25

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v30

    .line 1090
    .local v30, "nuhLayerIdPresentFlag":Z
    const/16 v32, 0x1

    move-object/from16 v33, v6

    move/from16 v6, v32

    .local v6, "i":I
    .local v33, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :goto_e
    if-ge v6, v5, :cond_19

    .line 1091
    if-eqz v30, :cond_15

    .line 1092
    move-object/from16 v32, v9

    const/4 v9, 0x6

    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v32, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v18

    aput v18, v15, v6

    goto :goto_f

    .line 1094
    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :cond_15
    move-object/from16 v32, v9

    const/4 v9, 0x6

    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    aput v6, v15, v6

    .line 1096
    :goto_f
    if-nez v14, :cond_17

    .line 1097
    const/16 v18, 0x0

    move/from16 v9, v18

    .local v9, "j":I
    :goto_10
    if-ge v9, v2, :cond_16

    .line 1098
    aget-object v18, v4, v6

    aget v35, v3, v9

    move-object/from16 v36, v3

    const/16 v19, 0x1

    .end local v3    # "dimensionIdLenMinus1":[I
    .local v36, "dimensionIdLenMinus1":[I
    add-int/lit8 v3, v35, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    aput v3, v18, v9

    .line 1097
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v36

    goto :goto_10

    .end local v36    # "dimensionIdLenMinus1":[I
    .restart local v3    # "dimensionIdLenMinus1":[I
    :cond_16
    move-object/from16 v36, v3

    .end local v3    # "dimensionIdLenMinus1":[I
    .end local v9    # "j":I
    .restart local v36    # "dimensionIdLenMinus1":[I
    goto :goto_12

    .line 1101
    .end local v36    # "dimensionIdLenMinus1":[I
    .restart local v3    # "dimensionIdLenMinus1":[I
    :cond_17
    move-object/from16 v36, v3

    .end local v3    # "dimensionIdLenMinus1":[I
    .restart local v36    # "dimensionIdLenMinus1":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    if-ge v3, v2, :cond_18

    .line 1102
    aget-object v9, v4, v6

    aget v18, v15, v6

    add-int/lit8 v35, v3, 0x1

    aget v35, v13, v35

    const/16 v19, 0x1

    shl-int v35, v19, v35

    add-int/lit8 v35, v35, -0x1

    and-int v18, v18, v35

    aget v35, v13, v3

    shr-int v18, v18, v35

    aput v18, v9, v3

    .line 1101
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1090
    .end local v3    # "j":I
    :cond_18
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, v32

    move-object/from16 v3, v36

    goto :goto_e

    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v36    # "dimensionIdLenMinus1":[I
    .local v3, "dimensionIdLenMinus1":[I
    .local v9, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :cond_19
    move-object/from16 v36, v3

    move-object/from16 v32, v9

    .line 1109
    .end local v3    # "dimensionIdLenMinus1":[I
    .end local v6    # "i":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v36    # "dimensionIdLenMinus1":[I
    add-int/lit8 v3, v10, 0x1

    new-array v3, v3, [I

    .line 1110
    .local v3, "viewOrderIdx":[I
    const/4 v6, 0x1

    .line 1111
    .local v6, "numViews":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_13
    move/from16 v18, v2

    .end local v2    # "numScalabilityTypes":I
    .local v18, "numScalabilityTypes":I
    const/4 v2, -0x1

    if-ge v9, v5, :cond_21

    .line 1112
    aget v34, v15, v9

    aput v2, v3, v34

    .line 1114
    const/4 v2, 0x0

    .local v2, "scalabilityMaskFlagIndex":I
    const/16 v34, 0x0

    .line 1115
    .local v34, "j":I
    :goto_14
    move-object/from16 v35, v13

    const/16 v13, 0x10

    .end local v13    # "dimBitOffset":[I
    .local v35, "dimBitOffset":[I
    if-ge v2, v13, :cond_1c

    .line 1117
    aget-boolean v29, v11, v2

    if-eqz v29, :cond_1b

    .line 1118
    const/4 v13, 0x1

    if-ne v2, v13, :cond_1a

    .line 1123
    aget v13, v15, v9

    aget-object v37, v4, v9

    aget v37, v37, v34

    aput v37, v3, v13

    .line 1125
    :cond_1a
    add-int/lit8 v34, v34, 0x1

    .line 1116
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, v35

    goto :goto_14

    .line 1128
    .end local v2    # "scalabilityMaskFlagIndex":I
    .end local v34    # "j":I
    :cond_1c
    if-lez v9, :cond_1f

    .line 1129
    const/4 v2, 0x1

    .line 1130
    .local v2, "newView":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_15
    if-ge v13, v9, :cond_1e

    .line 1131
    aget v34, v15, v9

    move/from16 v37, v2

    .end local v2    # "newView":Z
    .local v37, "newView":Z
    aget v2, v3, v34

    aget v34, v15, v13

    move-object/from16 v38, v4

    .end local v4    # "dimensionId":[[I
    .local v38, "dimensionId":[[I
    aget v4, v3, v34

    if-ne v2, v4, :cond_1d

    .line 1132
    const/4 v2, 0x0

    .line 1133
    .end local v37    # "newView":Z
    .restart local v2    # "newView":Z
    goto :goto_16

    .line 1130
    .end local v2    # "newView":Z
    .restart local v37    # "newView":Z
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v37

    move-object/from16 v4, v38

    goto :goto_15

    .end local v37    # "newView":Z
    .end local v38    # "dimensionId":[[I
    .restart local v2    # "newView":Z
    .restart local v4    # "dimensionId":[[I
    :cond_1e
    move/from16 v37, v2

    move-object/from16 v38, v4

    .line 1136
    .end local v4    # "dimensionId":[[I
    .end local v13    # "j":I
    .restart local v38    # "dimensionId":[[I
    :goto_16
    if-eqz v2, :cond_20

    .line 1137
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1128
    .end local v2    # "newView":Z
    .end local v38    # "dimensionId":[[I
    .restart local v4    # "dimensionId":[[I
    :cond_1f
    move-object/from16 v38, v4

    .line 1111
    .end local v4    # "dimensionId":[[I
    .restart local v38    # "dimensionId":[[I
    :cond_20
    :goto_17
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    move-object/from16 v13, v35

    move-object/from16 v4, v38

    goto :goto_13

    .end local v35    # "dimBitOffset":[I
    .end local v38    # "dimensionId":[[I
    .restart local v4    # "dimensionId":[[I
    .local v13, "dimBitOffset":[I
    :cond_21
    move-object/from16 v38, v4

    move-object/from16 v35, v13

    .line 1142
    .end local v4    # "dimensionId":[[I
    .end local v9    # "i":I
    .end local v13    # "dimBitOffset":[I
    .restart local v35    # "dimBitOffset":[I
    .restart local v38    # "dimensionId":[[I
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 1143
    .local v4, "viewIdLen":I
    const/4 v9, 0x2

    if-lt v6, v9, :cond_57

    if-nez v4, :cond_22

    move-object/from16 v62, v1

    move-object/from16 v37, v3

    move/from16 v16, v4

    move/from16 v58, v5

    move/from16 v40, v6

    move/from16 v53, v8

    move-object/from16 v34, v11

    move v4, v12

    move/from16 v48, v14

    move-object/from16 v50, v15

    move v14, v10

    goto/16 :goto_3d

    .line 1152
    :cond_22
    new-array v9, v6, [I

    .line 1153
    .local v9, "viewIdVals":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_18
    if-ge v13, v6, :cond_23

    .line 1154
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v16

    aput v16, v9, v13

    .line 1153
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    .line 1157
    .end local v13    # "i":I
    :cond_23
    add-int/lit8 v13, v10, 0x1

    new-array v13, v13, [I

    .line 1158
    .local v13, "layerIdInVps":[I
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "i":I
    :goto_19
    if-ge v2, v5, :cond_24

    .line 1159
    move/from16 v16, v4

    .end local v4    # "viewIdLen":I
    .local v16, "viewIdLen":I
    aget v4, v15, v2

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v2, v13, v4

    .line 1158
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v16

    goto :goto_19

    .end local v16    # "viewIdLen":I
    .restart local v4    # "viewIdLen":I
    :cond_24
    move/from16 v16, v4

    .line 1161
    .end local v2    # "i":I
    .end local v4    # "viewIdLen":I
    .restart local v16    # "viewIdLen":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 1162
    .local v2, "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-gt v4, v10, :cond_26

    .line 1163
    move-object/from16 v34, v11

    .end local v11    # "scalabilityMaskFlag":[Z
    .local v34, "scalabilityMaskFlag":[Z
    aget v11, v3, v4

    move-object/from16 v37, v3

    .end local v3    # "viewOrderIdx":[I
    .local v37, "viewOrderIdx":[I
    add-int/lit8 v3, v6, -0x1

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1164
    .local v3, "viewIdValIdx":I
    if-ltz v3, :cond_25

    aget v11, v9, v3

    goto :goto_1b

    :cond_25
    const/4 v11, -0x1

    .line 1165
    .local v11, "viewIdVal":I
    :goto_1b
    move/from16 v39, v3

    .end local v3    # "viewIdValIdx":I
    .local v39, "viewIdValIdx":I
    new-instance v3, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    move/from16 v40, v6

    .end local v6    # "numViews":I
    .local v40, "numViews":I
    aget v6, v13, v4

    invoke-direct {v3, v6, v11}, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1162
    .end local v11    # "viewIdVal":I
    .end local v39    # "viewIdValIdx":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v34

    move-object/from16 v3, v37

    move/from16 v6, v40

    goto :goto_1a

    .end local v34    # "scalabilityMaskFlag":[Z
    .end local v37    # "viewOrderIdx":[I
    .end local v40    # "numViews":I
    .local v3, "viewOrderIdx":[I
    .restart local v6    # "numViews":I
    .local v11, "scalabilityMaskFlag":[Z
    :cond_26
    move-object/from16 v37, v3

    move/from16 v40, v6

    move-object/from16 v34, v11

    .line 1167
    .end local v3    # "viewOrderIdx":[I
    .end local v4    # "i":I
    .end local v6    # "numViews":I
    .end local v11    # "scalabilityMaskFlag":[Z
    .restart local v34    # "scalabilityMaskFlag":[Z
    .restart local v37    # "viewOrderIdx":[I
    .restart local v40    # "numViews":I
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 1169
    .local v3, "layerInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v4, v6, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_27

    .line 1171
    new-instance v4, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v4

    move-object/from16 v42, p1

    move-object/from16 v44, v17

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v4

    .line 1178
    :cond_27
    const/4 v4, -0x1

    .line 1179
    .local v4, "secondaryViewLayerId":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1c
    if-gt v6, v10, :cond_29

    .line 1180
    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v11, v11, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    move-object/from16 v39, v2

    const/4 v2, -0x1

    .end local v2    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .local v39, "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    if-eq v11, v2, :cond_28

    .line 1181
    move v4, v6

    .line 1182
    goto :goto_1d

    .line 1179
    :cond_28
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v39

    goto :goto_1c

    .end local v39    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .restart local v2    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    :cond_29
    move-object/from16 v39, v2

    .line 1185
    .end local v2    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .end local v6    # "i":I
    .restart local v39    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    :goto_1d
    const/4 v2, -0x1

    if-ne v4, v2, :cond_2a

    .line 1187
    new-instance v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v2

    move-object/from16 v42, p1

    move-object/from16 v44, v17

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v2

    .line 1196
    :cond_2a
    const/4 v2, 0x2

    new-array v6, v2, [I

    const/4 v11, 0x1

    aput v5, v6, v11

    const/16 v25, 0x0

    aput v5, v6, v25

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 1197
    .local v6, "directDependencyFlag":[[Z
    new-array v11, v2, [I

    const/4 v2, 0x1

    aput v5, v11, v2

    aput v5, v11, v25

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    .line 1198
    .local v2, "dependencyFlag":[[Z
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1e
    if-ge v11, v5, :cond_2c

    .line 1199
    const/16 v29, 0x0

    move-object/from16 v47, v9

    move/from16 v9, v29

    .local v9, "j":I
    .local v47, "viewIdVals":[I
    :goto_1f
    if-ge v9, v11, :cond_2b

    .line 1200
    aget-object v29, v6, v11

    aget-object v41, v2, v11

    .line 1201
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v42

    aput-boolean v42, v41, v9

    aput-boolean v42, v29, v9

    .line 1199
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 1198
    .end local v9    # "j":I
    :cond_2b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v47

    goto :goto_1e

    .end local v47    # "viewIdVals":[I
    .local v9, "viewIdVals":[I
    :cond_2c
    move-object/from16 v47, v9

    .line 1204
    .end local v9    # "viewIdVals":[I
    .end local v11    # "i":I
    .restart local v47    # "viewIdVals":[I
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_20
    if-ge v9, v5, :cond_30

    .line 1205
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_21
    move-object/from16 v29, v13

    .end local v13    # "layerIdInVps":[I
    .local v29, "layerIdInVps":[I
    add-int/lit8 v13, v5, -0x1

    if-ge v11, v13, :cond_2f

    .line 1206
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_22
    if-ge v13, v9, :cond_2e

    .line 1207
    aget-object v41, v2, v9

    aget-boolean v41, v41, v13

    if-eqz v41, :cond_2d

    aget-object v41, v2, v13

    aget-boolean v41, v41, v11

    if-eqz v41, :cond_2d

    .line 1208
    aget-object v41, v2, v9

    const/16 v19, 0x1

    aput-boolean v19, v41, v11

    .line 1209
    goto :goto_23

    .line 1206
    :cond_2d
    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    .line 1205
    .end local v13    # "k":I
    :cond_2e
    :goto_23
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v29

    goto :goto_21

    .line 1204
    .end local v11    # "j":I
    :cond_2f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, v29

    goto :goto_20

    .end local v29    # "layerIdInVps":[I
    .local v13, "layerIdInVps":[I
    :cond_30
    move-object/from16 v29, v13

    .line 1216
    .end local v9    # "i":I
    .end local v13    # "layerIdInVps":[I
    .restart local v29    # "layerIdInVps":[I
    add-int/lit8 v9, v10, 0x1

    new-array v9, v9, [I

    .line 1217
    .local v9, "numDirectRefLayers":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_24
    if-ge v11, v5, :cond_32

    .line 1218
    const/4 v13, 0x0

    .line 1219
    .local v13, "d":I
    const/16 v41, 0x0

    move/from16 v48, v14

    move/from16 v14, v41

    .local v14, "j":I
    .local v48, "splittingFlag":Z
    :goto_25
    if-ge v14, v11, :cond_31

    .line 1220
    aget-object v41, v6, v11

    aget-boolean v41, v41, v14

    add-int v13, v13, v41

    .line 1219
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 1222
    .end local v14    # "j":I
    :cond_31
    aget v14, v15, v11

    aput v13, v9, v14

    .line 1217
    .end local v13    # "d":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v14, v48

    goto :goto_24

    .end local v48    # "splittingFlag":Z
    .local v14, "splittingFlag":Z
    :cond_32
    move/from16 v48, v14

    .line 1225
    .end local v11    # "i":I
    .end local v14    # "splittingFlag":Z
    .restart local v48    # "splittingFlag":Z
    const/4 v11, 0x0

    .line 1226
    .local v11, "numIndependentLayers":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_26
    if-ge v13, v5, :cond_34

    .line 1227
    aget v14, v15, v13

    aget v14, v9, v14

    if-nez v14, :cond_33

    .line 1228
    add-int/lit8 v11, v11, 0x1

    .line 1226
    :cond_33
    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    .line 1231
    .end local v13    # "i":I
    :cond_34
    const/4 v13, 0x1

    if-le v11, v13, :cond_35

    .line 1233
    new-instance v13, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v13

    move-object/from16 v42, p1

    move-object/from16 v44, v17

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v13

    .line 1243
    :cond_35
    new-array v13, v5, [I

    .line 1244
    .local v13, "subLayersVpsMaxMinus1":[I
    new-array v14, v12, [I

    .line 1245
    .local v14, "maxSubLayersInLayerSet":[I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v41

    if-eqz v41, :cond_37

    .line 1246
    const/16 v41, 0x0

    move/from16 v49, v11

    move/from16 v11, v41

    .local v11, "i":I
    .local v49, "numIndependentLayers":I
    :goto_27
    if-ge v11, v5, :cond_36

    .line 1247
    move-object/from16 v50, v15

    const/4 v15, 0x3

    .end local v15    # "layerIdInNuh":[I
    .local v50, "layerIdInNuh":[I
    invoke-virtual {v0, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v41

    aput v41, v13, v11

    .line 1246
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v15, v50

    goto :goto_27

    .end local v50    # "layerIdInNuh":[I
    .restart local v15    # "layerIdInNuh":[I
    :cond_36
    move-object/from16 v50, v15

    .end local v11    # "i":I
    .end local v15    # "layerIdInNuh":[I
    .restart local v50    # "layerIdInNuh":[I
    goto :goto_28

    .line 1250
    .end local v49    # "numIndependentLayers":I
    .end local v50    # "layerIdInNuh":[I
    .local v11, "numIndependentLayers":I
    .restart local v15    # "layerIdInNuh":[I
    :cond_37
    move/from16 v49, v11

    move-object/from16 v50, v15

    .end local v11    # "numIndependentLayers":I
    .end local v15    # "layerIdInNuh":[I
    .restart local v49    # "numIndependentLayers":I
    .restart local v50    # "layerIdInNuh":[I
    const/4 v11, 0x0

    invoke-static {v13, v11, v5, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 1252
    :goto_28
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_29
    if-ge v11, v12, :cond_39

    .line 1253
    const/4 v15, 0x0

    .line 1254
    .local v15, "layerSetMaxSubLayersMinus1":I
    const/16 v41, 0x0

    move-object/from16 v51, v9

    move/from16 v9, v41

    .local v9, "k":I
    .local v51, "numDirectRefLayers":[I
    :goto_2a
    move-object/from16 v52, v2

    .end local v2    # "dependencyFlag":[[Z
    .local v52, "dependencyFlag":[[Z
    aget v2, v7, v11

    if-ge v9, v2, :cond_38

    .line 1255
    aget-object v2, v1, v11

    aget v2, v2, v9

    .line 1256
    .local v2, "layerId":I
    nop

    .line 1259
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v41

    move/from16 v42, v2

    .end local v2    # "layerId":I
    .local v42, "layerId":I
    move-object/from16 v2, v41

    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    aget v2, v13, v2

    .line 1257
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1254
    .end local v42    # "layerId":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v52

    goto :goto_2a

    .line 1261
    .end local v9    # "k":I
    :cond_38
    add-int/lit8 v2, v15, 0x1

    aput v2, v14, v11

    .line 1252
    .end local v15    # "layerSetMaxSubLayersMinus1":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v51

    move-object/from16 v2, v52

    goto :goto_29

    .end local v51    # "numDirectRefLayers":[I
    .end local v52    # "dependencyFlag":[[Z
    .local v2, "dependencyFlag":[[Z
    .local v9, "numDirectRefLayers":[I
    :cond_39
    move-object/from16 v52, v2

    move-object/from16 v51, v9

    .line 1264
    .end local v2    # "dependencyFlag":[[Z
    .end local v9    # "numDirectRefLayers":[I
    .end local v11    # "i":I
    .restart local v51    # "numDirectRefLayers":[I
    .restart local v52    # "dependencyFlag":[[Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    add-int/lit8 v9, v5, -0x1

    if-ge v2, v9, :cond_3c

    .line 1266
    add-int/lit8 v9, v2, 0x1

    .local v9, "j":I
    :goto_2c
    if-ge v9, v5, :cond_3b

    .line 1267
    aget-object v11, v6, v9

    aget-boolean v11, v11, v2

    if-eqz v11, :cond_3a

    .line 1268
    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_2d

    .line 1267
    :cond_3a
    const/4 v11, 0x3

    .line 1266
    :goto_2d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    :cond_3b
    const/4 v11, 0x3

    .line 1265
    .end local v9    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1273
    .end local v2    # "i":I
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    const/4 v9, 0x1

    add-int/2addr v2, v9

    .line 1277
    .local v2, "numProfileTierLevels":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v11

    .line 1278
    .local v11, "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    move-object/from16 v15, v32

    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v15, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1279
    if-le v2, v9, :cond_3e

    .line 1280
    move-object/from16 v9, v33

    .end local v33    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v9, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v11, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1281
    move-object/from16 v24, v9

    .line 1282
    .local v24, "prevProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    const/16 v32, 0x2

    move-object/from16 v24, v13

    move/from16 v13, v32

    .local v9, "prevProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v13, "i":I
    .local v24, "subLayersVpsMaxMinus1":[I
    .restart local v33    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :goto_2e
    if-ge v13, v2, :cond_3d

    .line 1283
    nop

    .line 1286
    move-object/from16 v32, v15

    .end local v15    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    .line 1284
    invoke-static {v0, v15, v8, v9}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v15

    .line 1289
    .local v15, "nextProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1290
    move-object v9, v15

    .line 1282
    .end local v15    # "nextProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, v32

    goto :goto_2e

    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v15, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :cond_3d
    move-object/from16 v32, v15

    .end local v15    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    goto :goto_2f

    .line 1279
    .end local v9    # "prevProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v24    # "subLayersVpsMaxMinus1":[I
    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v13, "subLayersVpsMaxMinus1":[I
    .restart local v15    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :cond_3e
    move-object/from16 v24, v13

    move-object/from16 v32, v15

    .line 1293
    .end local v13    # "subLayersVpsMaxMinus1":[I
    .end local v15    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v24    # "subLayersVpsMaxMinus1":[I
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :goto_2f
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 1297
    .end local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v9, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    add-int/2addr v13, v12

    .line 1298
    .local v13, "numOutputLayerSets":I
    if-le v13, v12, :cond_3f

    .line 1301
    new-instance v15, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v15

    move-object/from16 v42, p1

    move-object/from16 v44, v17

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v15

    .line 1309
    :cond_3f
    move/from16 v53, v8

    const/4 v15, 0x2

    .end local v8    # "maxSubLayersMinus1":I
    .local v53, "maxSubLayersMinus1":I
    invoke-virtual {v0, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 1311
    .local v8, "defaultOutputLayerIdc":I
    add-int/lit8 v27, v10, 0x1

    move-object/from16 v54, v11

    .end local v11    # "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v54, "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    new-array v11, v15, [I

    const/4 v15, 0x1

    aput v27, v11, v15

    const/4 v15, 0x0

    aput v13, v11, v15

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    .line 1312
    .local v11, "outputLayerFlag":[[Z
    new-array v15, v13, [I

    .line 1313
    .local v15, "numOutputLayersInOutputLayerSet":[I
    move-object/from16 v27, v9

    .end local v9    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    new-array v9, v13, [I

    .line 1314
    .local v9, "olsHighestOutputLayerId":[I
    const/16 v41, 0x0

    move-object/from16 v55, v6

    move/from16 v6, v41

    .local v6, "i":I
    .local v55, "directDependencyFlag":[[Z
    :goto_30
    if-ge v6, v12, :cond_44

    .line 1315
    move/from16 v56, v12

    const/4 v12, 0x0

    .end local v12    # "numLayerSets":I
    .local v56, "numLayerSets":I
    aput v12, v15, v6

    .line 1316
    aget v25, v31, v6

    aput v25, v9, v6

    .line 1317
    if-nez v8, :cond_40

    .line 1318
    move-object/from16 v57, v14

    .end local v14    # "maxSubLayersInLayerSet":[I
    .local v57, "maxSubLayersInLayerSet":[I
    aget-object v14, v11, v6

    move/from16 v58, v5

    .end local v5    # "maxLayers":I
    .local v58, "maxLayers":I
    aget v5, v7, v6

    const/4 v0, 0x1

    invoke-static {v14, v12, v5, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1319
    aget v5, v7, v6

    aput v5, v15, v6

    goto :goto_33

    .line 1320
    .end local v57    # "maxSubLayersInLayerSet":[I
    .end local v58    # "maxLayers":I
    .restart local v5    # "maxLayers":I
    .restart local v14    # "maxSubLayersInLayerSet":[I
    :cond_40
    move/from16 v58, v5

    move-object/from16 v57, v14

    const/4 v0, 0x1

    .end local v5    # "maxLayers":I
    .end local v14    # "maxSubLayersInLayerSet":[I
    .restart local v57    # "maxSubLayersInLayerSet":[I
    .restart local v58    # "maxLayers":I
    if-ne v8, v0, :cond_43

    .line 1321
    aget v0, v31, v6

    .line 1322
    .local v0, "highestLayerId":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_31
    aget v12, v7, v6

    if-ge v5, v12, :cond_42

    .line 1323
    aget-object v12, v11, v6

    aget-object v14, v1, v6

    aget v14, v14, v5

    if-ne v14, v0, :cond_41

    const/4 v14, 0x1

    goto :goto_32

    :cond_41
    const/4 v14, 0x0

    :goto_32
    aput-boolean v14, v12, v5

    .line 1322
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1325
    .end local v5    # "j":I
    :cond_42
    const/4 v5, 0x1

    aput v5, v15, v6

    .line 1326
    .end local v0    # "highestLayerId":I
    goto :goto_33

    .line 1327
    :cond_43
    move v5, v0

    const/4 v0, 0x0

    aget-object v12, v11, v0

    aput-boolean v5, v12, v0

    .line 1328
    aput v5, v15, v0

    .line 1314
    :goto_33
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v12, v56

    move-object/from16 v14, v57

    move/from16 v5, v58

    goto :goto_30

    .end local v56    # "numLayerSets":I
    .end local v57    # "maxSubLayersInLayerSet":[I
    .end local v58    # "maxLayers":I
    .local v5, "maxLayers":I
    .restart local v12    # "numLayerSets":I
    .restart local v14    # "maxSubLayersInLayerSet":[I
    :cond_44
    move/from16 v58, v5

    move/from16 v56, v12

    move-object/from16 v57, v14

    .line 1332
    .end local v5    # "maxLayers":I
    .end local v6    # "i":I
    .end local v12    # "numLayerSets":I
    .end local v14    # "maxSubLayersInLayerSet":[I
    .restart local v56    # "numLayerSets":I
    .restart local v57    # "maxSubLayersInLayerSet":[I
    .restart local v58    # "maxLayers":I
    add-int/lit8 v0, v10, 0x1

    new-array v0, v0, [I

    .line 1333
    .local v0, "profileTierLevelIndices":[I
    add-int/lit8 v5, v10, 0x1

    const/4 v6, 0x2

    new-array v12, v6, [I

    const/4 v6, 0x1

    aput v5, v12, v6

    const/4 v5, 0x0

    aput v13, v12, v5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 1334
    .local v5, "necessaryLayerFlag":[[Z
    const/4 v6, 0x0

    .line 1336
    .local v6, "targetOutputLayerSetIdx":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_34
    if-ge v12, v13, :cond_52

    .line 1337
    const/4 v14, 0x2

    if-ne v8, v14, :cond_46

    .line 1338
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_35
    move/from16 v59, v8

    .end local v8    # "defaultOutputLayerIdc":I
    .local v59, "defaultOutputLayerIdc":I
    aget v8, v7, v12

    if-ge v14, v8, :cond_47

    .line 1339
    aget-object v8, v11, v12

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v41

    aput-boolean v41, v8, v14

    .line 1340
    aget v8, v15, v12

    aget-object v41, v11, v12

    aget-boolean v41, v41, v14

    add-int v8, v8, v41

    aput v8, v15, v12

    .line 1341
    aget-object v8, v11, v12

    aget-boolean v8, v8, v14

    if-eqz v8, :cond_45

    .line 1342
    aget-object v8, v1, v12

    aget v8, v8, v14

    aput v8, v9, v12

    .line 1338
    :cond_45
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v59

    goto :goto_35

    .line 1337
    .end local v14    # "j":I
    .end local v59    # "defaultOutputLayerIdc":I
    .restart local v8    # "defaultOutputLayerIdc":I
    :cond_46
    move/from16 v59, v8

    .line 1349
    .end local v8    # "defaultOutputLayerIdc":I
    .restart local v59    # "defaultOutputLayerIdc":I
    :cond_47
    if-nez v6, :cond_49

    aget-object v8, v1, v12

    const/4 v14, 0x0

    aget v8, v8, v14

    if-nez v8, :cond_49

    aget-object v8, v11, v12

    aget-boolean v8, v8, v14

    if-eqz v8, :cond_49

    .line 1350
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_36
    aget v14, v7, v12

    if-ge v8, v14, :cond_49

    .line 1351
    aget-object v14, v1, v12

    aget v14, v14, v8

    if-ne v14, v4, :cond_48

    aget-object v14, v11, v12

    aget-boolean v14, v14, v4

    if-eqz v14, :cond_48

    .line 1353
    move v6, v12

    .line 1350
    :cond_48
    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x0

    goto :goto_36

    .line 1358
    .end local v8    # "j":I
    :cond_49
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_37
    aget v14, v7, v12

    if-ge v8, v14, :cond_50

    .line 1359
    const/4 v14, 0x1

    if-le v2, v14, :cond_4f

    .line 1360
    aget-object v14, v5, v12

    aget-object v41, v11, v12

    aget-boolean v41, v41, v8

    aput-boolean v41, v14, v8

    .line 1361
    move v14, v10

    move-object/from16 v60, v11

    .end local v10    # "maxLayerId":I
    .end local v11    # "outputLayerFlag":[[Z
    .local v14, "maxLayerId":I
    .local v60, "outputLayerFlag":[[Z
    int-to-double v10, v2

    move/from16 v61, v2

    .end local v2    # "numProfileTierLevels":I
    .local v61, "numProfileTierLevels":I
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v2

    .line 1362
    .local v2, "bitLen":I
    aget-object v10, v5, v12

    aget-boolean v10, v10, v8

    if-nez v10, :cond_4c

    .line 1363
    aget-object v10, v1, v12

    aget v10, v10, v8

    invoke-virtual {v3, v10}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v10, v10, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1364
    .local v10, "currLayerIdInVps":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_38
    if-ge v11, v8, :cond_4b

    .line 1365
    aget-object v41, v1, v12

    move-object/from16 v62, v1

    .end local v1    # "layerSetLayerIdList":[[I
    .local v62, "layerSetLayerIdList":[[I
    aget v1, v41, v11

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v1, v1, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1366
    .local v1, "refLayerIdInVps":I
    aget-object v41, v52, v10

    aget-boolean v41, v41, v1

    if-eqz v41, :cond_4a

    .line 1367
    aget-object v41, v5, v12

    const/16 v19, 0x1

    aput-boolean v19, v41, v8

    .line 1368
    goto :goto_39

    .line 1364
    .end local v1    # "refLayerIdInVps":I
    :cond_4a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v62

    goto :goto_38

    .end local v62    # "layerSetLayerIdList":[[I
    .local v1, "layerSetLayerIdList":[[I
    :cond_4b
    move-object/from16 v62, v1

    .end local v1    # "layerSetLayerIdList":[[I
    .restart local v62    # "layerSetLayerIdList":[[I
    goto :goto_39

    .line 1362
    .end local v10    # "currLayerIdInVps":I
    .end local v11    # "k":I
    .end local v62    # "layerSetLayerIdList":[[I
    .restart local v1    # "layerSetLayerIdList":[[I
    :cond_4c
    move-object/from16 v62, v1

    .line 1372
    .end local v1    # "layerSetLayerIdList":[[I
    .restart local v62    # "layerSetLayerIdList":[[I
    :goto_39
    aget-object v1, v5, v12

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_4e

    .line 1373
    if-lez v6, :cond_4d

    if-ne v12, v6, :cond_4d

    .line 1375
    move-object/from16 v1, p0

    invoke-virtual {v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    aput v10, v0, v8

    goto :goto_3a

    .line 1373
    :cond_4d
    move-object/from16 v1, p0

    .line 1377
    invoke-virtual {v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_3a

    .line 1372
    :cond_4e
    move-object/from16 v1, p0

    goto :goto_3a

    .line 1359
    .end local v14    # "maxLayerId":I
    .end local v60    # "outputLayerFlag":[[Z
    .end local v61    # "numProfileTierLevels":I
    .end local v62    # "layerSetLayerIdList":[[I
    .restart local v1    # "layerSetLayerIdList":[[I
    .local v2, "numProfileTierLevels":I
    .local v10, "maxLayerId":I
    .local v11, "outputLayerFlag":[[Z
    :cond_4f
    move-object/from16 v62, v1

    move/from16 v61, v2

    move v14, v10

    move-object/from16 v60, v11

    move-object/from16 v1, p0

    .line 1358
    .end local v1    # "layerSetLayerIdList":[[I
    .end local v2    # "numProfileTierLevels":I
    .end local v10    # "maxLayerId":I
    .end local v11    # "outputLayerFlag":[[Z
    .restart local v14    # "maxLayerId":I
    .restart local v60    # "outputLayerFlag":[[Z
    .restart local v61    # "numProfileTierLevels":I
    .restart local v62    # "layerSetLayerIdList":[[I
    :goto_3a
    add-int/lit8 v8, v8, 0x1

    move v10, v14

    move-object/from16 v11, v60

    move/from16 v2, v61

    move-object/from16 v1, v62

    goto/16 :goto_37

    .end local v14    # "maxLayerId":I
    .end local v60    # "outputLayerFlag":[[Z
    .end local v61    # "numProfileTierLevels":I
    .end local v62    # "layerSetLayerIdList":[[I
    .restart local v1    # "layerSetLayerIdList":[[I
    .restart local v2    # "numProfileTierLevels":I
    .restart local v10    # "maxLayerId":I
    .restart local v11    # "outputLayerFlag":[[Z
    :cond_50
    move-object/from16 v62, v1

    move/from16 v61, v2

    move v14, v10

    move-object/from16 v60, v11

    move-object/from16 v1, p0

    .line 1382
    .end local v1    # "layerSetLayerIdList":[[I
    .end local v2    # "numProfileTierLevels":I
    .end local v8    # "j":I
    .end local v10    # "maxLayerId":I
    .end local v11    # "outputLayerFlag":[[Z
    .restart local v14    # "maxLayerId":I
    .restart local v60    # "outputLayerFlag":[[Z
    .restart local v61    # "numProfileTierLevels":I
    .restart local v62    # "layerSetLayerIdList":[[I
    aget v2, v15, v12

    const/4 v8, 0x1

    if-ne v2, v8, :cond_51

    aget v2, v9, v12

    aget v2, v51, v2

    if-lez v2, :cond_51

    .line 1384
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1336
    :cond_51
    add-int/lit8 v12, v12, 0x1

    move v10, v14

    move/from16 v8, v59

    move-object/from16 v11, v60

    move/from16 v2, v61

    move-object/from16 v1, v62

    goto/16 :goto_34

    .end local v14    # "maxLayerId":I
    .end local v59    # "defaultOutputLayerIdc":I
    .end local v60    # "outputLayerFlag":[[Z
    .end local v61    # "numProfileTierLevels":I
    .end local v62    # "layerSetLayerIdList":[[I
    .restart local v1    # "layerSetLayerIdList":[[I
    .restart local v2    # "numProfileTierLevels":I
    .local v8, "defaultOutputLayerIdc":I
    .restart local v10    # "maxLayerId":I
    .restart local v11    # "outputLayerFlag":[[Z
    :cond_52
    move-object/from16 v62, v1

    move/from16 v61, v2

    move/from16 v59, v8

    move v14, v10

    move-object/from16 v60, v11

    move-object/from16 v1, p0

    .line 1388
    .end local v1    # "layerSetLayerIdList":[[I
    .end local v2    # "numProfileTierLevels":I
    .end local v8    # "defaultOutputLayerIdc":I
    .end local v10    # "maxLayerId":I
    .end local v11    # "outputLayerFlag":[[Z
    .end local v12    # "i":I
    .restart local v14    # "maxLayerId":I
    .restart local v59    # "defaultOutputLayerIdc":I
    .restart local v60    # "outputLayerFlag":[[Z
    .restart local v61    # "numProfileTierLevels":I
    .restart local v62    # "layerSetLayerIdList":[[I
    if-nez v6, :cond_53

    .line 1390
    new-instance v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v2

    move-object/from16 v42, p1

    move-object/from16 v44, v17

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v2

    .line 1398
    :cond_53
    move/from16 v2, v58

    .end local v58    # "maxLayers":I
    .local v2, "maxLayers":I
    invoke-static {v1, v2}, Landroidx/media3/container/NalUnitUtil;->parseH265RepFormatsAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;I)Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    move-result-object v8

    .line 1400
    .local v8, "repFormatsAndIndices":Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1401
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3b
    if-ge v10, v2, :cond_55

    .line 1402
    aget v11, v50, v10

    aget v11, v51, v11

    if-nez v11, :cond_54

    .line 1403
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1401
    :cond_54
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1407
    .end local v10    # "i":I
    :cond_55
    move-object/from16 v10, v57

    .end local v57    # "maxSubLayersInLayerSet":[I
    .local v10, "maxSubLayersInLayerSet":[I
    invoke-static {v1, v13, v10, v7, v5}, Landroidx/media3/container/NalUnitUtil;->skipH265DpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V

    .line 1410
    move-object/from16 v11, v55

    .end local v55    # "directDependencyFlag":[[Z
    .local v11, "directDependencyFlag":[[Z
    invoke-static {v1, v2, v11}, Landroidx/media3/container/NalUnitUtil;->skipToH265VuiPresentFlagAfterDpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[[Z)V

    .line 1412
    const/4 v12, 0x0

    .line 1413
    .local v12, "videoSignalInfosAndIndices":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_56

    .line 1414
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 1415
    nop

    .line 1416
    move/from16 v19, v4

    move/from16 v4, v56

    .end local v56    # "numLayerSets":I
    .local v4, "numLayerSets":I
    .local v19, "secondaryViewLayerId":I
    invoke-static {v1, v2, v4, v10}, Landroidx/media3/container/NalUnitUtil;->parseH265VideoSignalInfosAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;II[I)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    move-result-object v12

    goto :goto_3c

    .line 1413
    .end local v19    # "secondaryViewLayerId":I
    .local v4, "secondaryViewLayerId":I
    .restart local v56    # "numLayerSets":I
    :cond_56
    move/from16 v19, v4

    move/from16 v4, v56

    .line 1420
    .end local v56    # "numLayerSets":I
    .local v4, "numLayerSets":I
    .restart local v19    # "secondaryViewLayerId":I
    :goto_3c
    new-instance v23, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    move/from16 v58, v2

    move-object/from16 v2, v27

    .end local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v2, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v58    # "maxLayers":I
    invoke-direct {v1, v2, v0}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    move-object/from16 v41, v23

    move-object/from16 v42, p1

    move-object/from16 v43, v3

    move-object/from16 v44, v1

    move-object/from16 v45, v8

    move-object/from16 v46, v12

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v23

    .line 1143
    .end local v0    # "profileTierLevelIndices":[I
    .end local v2    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v9    # "olsHighestOutputLayerId":[I
    .end local v13    # "numOutputLayerSets":I
    .end local v16    # "viewIdLen":I
    .end local v19    # "secondaryViewLayerId":I
    .end local v24    # "subLayersVpsMaxMinus1":[I
    .end local v29    # "layerIdInVps":[I
    .end local v34    # "scalabilityMaskFlag":[Z
    .end local v37    # "viewOrderIdx":[I
    .end local v39    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .end local v40    # "numViews":I
    .end local v47    # "viewIdVals":[I
    .end local v48    # "splittingFlag":Z
    .end local v49    # "numIndependentLayers":I
    .end local v50    # "layerIdInNuh":[I
    .end local v51    # "numDirectRefLayers":[I
    .end local v52    # "dependencyFlag":[[Z
    .end local v53    # "maxSubLayersMinus1":I
    .end local v54    # "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v58    # "maxLayers":I
    .end local v59    # "defaultOutputLayerIdc":I
    .end local v60    # "outputLayerFlag":[[Z
    .end local v61    # "numProfileTierLevels":I
    .end local v62    # "layerSetLayerIdList":[[I
    .restart local v1    # "layerSetLayerIdList":[[I
    .local v3, "viewOrderIdx":[I
    .local v4, "viewIdLen":I
    .local v5, "maxLayers":I
    .local v6, "numViews":I
    .local v8, "maxSubLayersMinus1":I
    .local v10, "maxLayerId":I
    .local v11, "scalabilityMaskFlag":[Z
    .local v12, "numLayerSets":I
    .local v14, "splittingFlag":Z
    .local v15, "layerIdInNuh":[I
    .restart local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    :cond_57
    move-object/from16 v62, v1

    move-object/from16 v37, v3

    move/from16 v16, v4

    move/from16 v58, v5

    move/from16 v40, v6

    move/from16 v53, v8

    move-object/from16 v34, v11

    move v4, v12

    move/from16 v48, v14

    move-object/from16 v50, v15

    move v14, v10

    .line 1145
    .end local v1    # "layerSetLayerIdList":[[I
    .end local v3    # "viewOrderIdx":[I
    .end local v5    # "maxLayers":I
    .end local v6    # "numViews":I
    .end local v8    # "maxSubLayersMinus1":I
    .end local v10    # "maxLayerId":I
    .end local v11    # "scalabilityMaskFlag":[Z
    .end local v12    # "numLayerSets":I
    .end local v15    # "layerIdInNuh":[I
    .local v4, "numLayerSets":I
    .local v14, "maxLayerId":I
    .restart local v16    # "viewIdLen":I
    .restart local v34    # "scalabilityMaskFlag":[Z
    .restart local v37    # "viewOrderIdx":[I
    .restart local v40    # "numViews":I
    .restart local v48    # "splittingFlag":Z
    .restart local v50    # "layerIdInNuh":[I
    .restart local v53    # "maxSubLayersMinus1":I
    .restart local v58    # "maxLayers":I
    .restart local v62    # "layerSetLayerIdList":[[I
    :goto_3d
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v0

    move-object/from16 v42, p1

    move-object/from16 v44, v17

    invoke-direct/range {v41 .. v46}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v0

    .line 1061
    .end local v16    # "viewIdLen":I
    .end local v18    # "numScalabilityTypes":I
    .end local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v30    # "nuhLayerIdPresentFlag":Z
    .end local v31    # "layerSetMaxLayerId":[I
    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v33    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v34    # "scalabilityMaskFlag":[Z
    .end local v35    # "dimBitOffset":[I
    .end local v36    # "dimensionIdLenMinus1":[I
    .end local v37    # "viewOrderIdx":[I
    .end local v38    # "dimensionId":[[I
    .end local v40    # "numViews":I
    .end local v48    # "splittingFlag":Z
    .end local v50    # "layerIdInNuh":[I
    .end local v53    # "maxSubLayersMinus1":I
    .end local v58    # "maxLayers":I
    .end local v62    # "layerSetLayerIdList":[[I
    .restart local v1    # "layerSetLayerIdList":[[I
    .local v2, "numScalabilityTypes":I
    .local v4, "layerSetMaxLayerId":[I
    .restart local v5    # "maxLayers":I
    .local v6, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v8    # "maxSubLayersMinus1":I
    .local v9, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v10    # "maxLayerId":I
    .restart local v11    # "scalabilityMaskFlag":[Z
    .restart local v12    # "numLayerSets":I
    .local v13, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v14, "splittingFlag":Z
    :cond_58
    move-object/from16 v62, v1

    move/from16 v18, v2

    move-object/from16 v31, v4

    move/from16 v58, v5

    move-object/from16 v33, v6

    move/from16 v53, v8

    move-object/from16 v32, v9

    move-object/from16 v34, v11

    move v4, v12

    move-object/from16 v27, v13

    move/from16 v48, v14

    move v14, v10

    .line 1062
    .end local v1    # "layerSetLayerIdList":[[I
    .end local v2    # "numScalabilityTypes":I
    .end local v5    # "maxLayers":I
    .end local v6    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v8    # "maxSubLayersMinus1":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v10    # "maxLayerId":I
    .end local v11    # "scalabilityMaskFlag":[Z
    .end local v12    # "numLayerSets":I
    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v4, "numLayerSets":I
    .local v14, "maxLayerId":I
    .restart local v18    # "numScalabilityTypes":I
    .restart local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v31    # "layerSetMaxLayerId":[I
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v33    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v34    # "scalabilityMaskFlag":[Z
    .restart local v48    # "splittingFlag":Z
    .restart local v53    # "maxSubLayersMinus1":I
    .restart local v58    # "maxLayers":I
    .restart local v62    # "layerSetLayerIdList":[[I
    :goto_3e
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v11, v17

    invoke-direct/range {v8 .. v13}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v0

    .line 987
    .end local v4    # "numLayerSets":I
    .end local v7    # "numLayersInIdList":[I
    .end local v14    # "maxLayerId":I
    .end local v18    # "numScalabilityTypes":I
    .end local v26    # "baseLayerAvailableFlag":Z
    .end local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v28    # "baseLayerInternalFlag":Z
    .end local v31    # "layerSetMaxLayerId":[I
    .end local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v33    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v34    # "scalabilityMaskFlag":[Z
    .end local v48    # "splittingFlag":Z
    .end local v53    # "maxSubLayersMinus1":I
    .end local v58    # "maxLayers":I
    .end local v62    # "layerSetLayerIdList":[[I
    .local v2, "baseLayerInternalFlag":Z
    .local v3, "baseLayerAvailableFlag":Z
    .restart local v5    # "maxLayers":I
    .restart local v8    # "maxSubLayersMinus1":I
    .restart local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v10    # "maxLayerId":I
    .restart local v12    # "numLayerSets":I
    .restart local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    :cond_59
    move/from16 v28, v2

    move/from16 v26, v3

    move/from16 v58, v5

    move/from16 v53, v8

    move-object/from16 v32, v9

    move v14, v10

    move v4, v12

    move-object/from16 v27, v13

    .line 989
    .end local v2    # "baseLayerInternalFlag":Z
    .end local v3    # "baseLayerAvailableFlag":Z
    .end local v5    # "maxLayers":I
    .end local v8    # "maxSubLayersMinus1":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v10    # "maxLayerId":I
    .end local v12    # "numLayerSets":I
    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v4    # "numLayerSets":I
    .restart local v14    # "maxLayerId":I
    .restart local v26    # "baseLayerAvailableFlag":Z
    .restart local v27    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v28    # "baseLayerInternalFlag":Z
    .restart local v32    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v53    # "maxSubLayersMinus1":I
    .restart local v58    # "maxLayers":I
    :goto_3f
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v37, 0x0

    move-object/from16 v35, v0

    move-object/from16 v36, p1

    move-object/from16 v38, v17

    invoke-direct/range {v35 .. v40}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v0
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1668
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 5
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1681
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1682
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 1683
    .local v1, "picParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 1684
    .local v2, "seqParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1685
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 1686
    .local v3, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v4, v1, v2, v3}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 706
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 49
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 719
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 720
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 721
    .local v15, "profileIdc":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v26

    .line 722
    .local v26, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v27

    .line 723
    .local v27, "levelIdc":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v28

    .line 725
    .local v28, "seqParameterSetId":I
    const/4 v5, 0x1

    .line 726
    .local v5, "chromaFormatIdc":I
    const/4 v6, 0x0

    .line 727
    .local v6, "separateColorPlaneFlag":Z
    const/4 v7, 0x0

    .line 728
    .local v7, "bitDepthLumaMinus8":I
    const/4 v8, 0x0

    .line 729
    .local v8, "bitDepthChromaMinus8":I
    const/16 v9, 0x56

    const/16 v10, 0x2c

    const/16 v11, 0xf4

    const/16 v12, 0x7a

    const/16 v13, 0x6e

    const/4 v14, 0x3

    const/16 v4, 0x64

    if-eq v15, v4, :cond_1

    if-eq v15, v13, :cond_1

    if-eq v15, v12, :cond_1

    if-eq v15, v11, :cond_1

    if-eq v15, v10, :cond_1

    const/16 v11, 0x53

    if-eq v15, v11, :cond_1

    if-eq v15, v9, :cond_1

    const/16 v11, 0x76

    if-eq v15, v11, :cond_1

    const/16 v11, 0x80

    if-eq v15, v11, :cond_1

    const/16 v11, 0x8a

    if-ne v15, v11, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    goto :goto_4

    .line 739
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 740
    if-ne v5, v14, :cond_2

    .line 741
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 743
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 744
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 745
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 746
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    .line 747
    .local v11, "seqScalingMatrixPresentFlag":Z
    if-eqz v11, :cond_6

    .line 748
    if-eq v5, v14, :cond_3

    const/16 v19, 0x8

    goto :goto_1

    :cond_3
    const/16 v19, 0xc

    :goto_1
    move/from16 v20, v19

    .line 749
    .local v20, "limit":I
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "i":I
    :goto_2
    move/from16 v13, v20

    .end local v20    # "limit":I
    .local v13, "limit":I
    if-ge v12, v13, :cond_6

    .line 750
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v20

    .line 751
    .local v20, "seqScalingListPresentFlag":Z
    if-eqz v20, :cond_5

    .line 752
    const/4 v4, 0x6

    if-ge v12, v4, :cond_4

    const/16 v4, 0x10

    goto :goto_3

    :cond_4
    const/16 v4, 0x40

    :goto_3
    invoke-static {v0, v4}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    .line 749
    .end local v20    # "seqScalingListPresentFlag":Z
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v13

    const/16 v4, 0x64

    const/16 v13, 0x6e

    goto :goto_2

    .line 758
    .end local v11    # "seqScalingMatrixPresentFlag":Z
    .end local v12    # "i":I
    .end local v13    # "limit":I
    :cond_6
    move v4, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    .end local v5    # "chromaFormatIdc":I
    .end local v6    # "separateColorPlaneFlag":Z
    .end local v7    # "bitDepthLumaMinus8":I
    .end local v8    # "bitDepthChromaMinus8":I
    .local v4, "chromaFormatIdc":I
    .local v29, "separateColorPlaneFlag":Z
    .local v30, "bitDepthLumaMinus8":I
    .local v31, "bitDepthChromaMinus8":I
    :goto_4
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v32, v5, 0x4

    .line 759
    .local v32, "frameNumLength":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 760
    .local v13, "picOrderCntType":I
    const/4 v5, 0x0

    .line 761
    .local v5, "picOrderCntLsbLength":I
    const/4 v6, 0x0

    .line 762
    .local v6, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v7, 0x1

    if-nez v13, :cond_7

    .line 764
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    add-int/lit8 v5, v8, 0x4

    move/from16 v33, v5

    move/from16 v34, v6

    goto :goto_6

    .line 765
    :cond_7
    if-ne v13, v7, :cond_9

    .line 766
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 767
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 768
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 769
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    int-to-long v11, v8

    .line 770
    .local v11, "numRefFramesInPicOrderCntCycle":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    int-to-long v9, v8

    cmp-long v9, v9, v11

    if-gez v9, :cond_8

    .line 771
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 770
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x56

    const/16 v10, 0x2c

    goto :goto_5

    :cond_8
    move/from16 v33, v5

    move/from16 v34, v6

    goto :goto_6

    .line 765
    .end local v8    # "i":I
    .end local v11    # "numRefFramesInPicOrderCntCycle":J
    :cond_9
    move/from16 v33, v5

    move/from16 v34, v6

    .line 774
    .end local v5    # "picOrderCntLsbLength":I
    .end local v6    # "deltaPicOrderAlwaysZeroFlag":Z
    .local v33, "picOrderCntLsbLength":I
    .local v34, "deltaPicOrderAlwaysZeroFlag":Z
    :goto_6
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v35

    .line 775
    .local v35, "maxNumRefFrames":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 777
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v36, v5, 0x1

    .line 778
    .local v36, "picWidthInMbs":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v37, v5, 0x1

    .line 779
    .local v37, "picHeightInMapUnits":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v38

    .line 780
    .local v38, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v5, v38, 0x2

    mul-int v39, v5, v37

    .line 781
    .local v39, "frameHeightInMbs":I
    if-nez v38, :cond_a

    .line 782
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 785
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 786
    mul-int/lit8 v5, v36, 0x10

    .line 787
    .local v5, "frameWidth":I
    mul-int/lit8 v6, v39, 0x10

    .line 788
    .local v6, "frameHeight":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v40

    .line 789
    .local v40, "frameCroppingFlag":Z
    if-eqz v40, :cond_e

    .line 790
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 791
    .local v9, "frameCropLeftOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 792
    .local v10, "frameCropRightOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 793
    .local v11, "frameCropTopOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 796
    .local v12, "frameCropBottomOffset":I
    if-nez v4, :cond_b

    .line 797
    const/16 v24, 0x1

    .line 798
    .local v24, "cropUnitX":I
    rsub-int/lit8 v25, v38, 0x2

    .local v25, "cropUnitY":I
    goto :goto_9

    .line 800
    .end local v24    # "cropUnitX":I
    .end local v25    # "cropUnitY":I
    :cond_b
    if-ne v4, v14, :cond_c

    move/from16 v24, v7

    goto :goto_7

    :cond_c
    const/16 v24, 0x2

    .line 801
    .local v24, "subWidthC":I
    :goto_7
    if-ne v4, v7, :cond_d

    const/16 v25, 0x2

    goto :goto_8

    :cond_d
    move/from16 v25, v7

    .line 802
    .local v25, "subHeightC":I
    :goto_8
    move/from16 v41, v24

    .line 803
    .local v41, "cropUnitX":I
    rsub-int/lit8 v42, v38, 0x2

    mul-int v42, v42, v25

    move/from16 v24, v41

    move/from16 v25, v42

    .line 805
    .end local v41    # "cropUnitX":I
    .local v24, "cropUnitX":I
    .local v25, "cropUnitY":I
    :goto_9
    add-int v41, v9, v10

    mul-int v41, v41, v24

    sub-int v5, v5, v41

    .line 806
    add-int v41, v11, v12

    mul-int v41, v41, v25

    sub-int v6, v6, v41

    move/from16 v41, v5

    move/from16 v42, v6

    goto :goto_a

    .line 789
    .end local v9    # "frameCropLeftOffset":I
    .end local v10    # "frameCropRightOffset":I
    .end local v11    # "frameCropTopOffset":I
    .end local v12    # "frameCropBottomOffset":I
    .end local v24    # "cropUnitX":I
    .end local v25    # "cropUnitY":I
    :cond_e
    move/from16 v41, v5

    move/from16 v42, v6

    .line 809
    .end local v5    # "frameWidth":I
    .end local v6    # "frameHeight":I
    .local v41, "frameWidth":I
    .local v42, "frameHeight":I
    :goto_a
    const/4 v5, -0x1

    .line 810
    .local v5, "colorSpace":I
    const/4 v6, -0x1

    .line 811
    .local v6, "colorRange":I
    const/4 v9, -0x1

    .line 812
    .local v9, "colorTransfer":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 823
    .local v10, "pixelWidthHeightRatio":F
    const/16 v11, 0x2c

    if-eq v15, v11, :cond_f

    const/16 v11, 0x56

    if-eq v15, v11, :cond_f

    const/16 v11, 0x64

    if-eq v15, v11, :cond_f

    const/16 v11, 0x6e

    if-eq v15, v11, :cond_f

    const/16 v11, 0x7a

    if-eq v15, v11, :cond_f

    const/16 v11, 0xf4

    if-ne v15, v11, :cond_10

    :cond_f
    and-int/lit8 v11, v26, 0x10

    if-eqz v11, :cond_10

    .line 824
    const/4 v11, 0x0

    goto :goto_b

    .line 825
    :cond_10
    const/16 v11, 0x10

    :goto_b
    nop

    .line 826
    .local v11, "maxNumReorderFrames":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 828
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    .line 829
    .local v12, "aspectRatioInfoPresentFlag":Z
    if-eqz v12, :cond_14

    .line 830
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 831
    .local v8, "aspectRatioIdc":I
    const/16 v7, 0xff

    if-ne v8, v7, :cond_12

    .line 832
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    .line 833
    .local v14, "sarWidth":I
    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 834
    .local v7, "sarHeight":I
    if-eqz v14, :cond_11

    if-eqz v7, :cond_11

    .line 835
    int-to-float v1, v14

    int-to-float v2, v7

    div-float v10, v1, v2

    .line 837
    .end local v7    # "sarHeight":I
    .end local v14    # "sarWidth":I
    :cond_11
    goto :goto_c

    :cond_12
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v1, v1

    if-ge v8, v1, :cond_13

    .line 838
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v10, v1, v8

    goto :goto_c

    .line 840
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .end local v8    # "aspectRatioIdc":I
    :cond_14
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 844
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 846
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 847
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 849
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v7, 0x1

    goto :goto_d

    :cond_16
    const/4 v7, 0x2

    :goto_d
    move v6, v7

    .line 850
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 851
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 852
    .local v2, "colorPrimaries":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 853
    .local v7, "transferCharacteristics":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 855
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v5

    .line 856
    nop

    .line 857
    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v9

    .line 860
    .end local v2    # "colorPrimaries":I
    .end local v7    # "transferCharacteristics":I
    :cond_17
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 861
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 862
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 864
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 865
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 867
    :cond_19
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 868
    .local v1, "nalHrdParametersPresent":Z
    if-eqz v1, :cond_1a

    .line 869
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 871
    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 872
    .local v2, "vclHrdParametersPresent":Z
    if-eqz v2, :cond_1b

    .line 873
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 875
    :cond_1b
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    .line 876
    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 878
    :cond_1d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 879
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 880
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 881
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 882
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 883
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 884
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 885
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 886
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move v1, v5

    move v2, v6

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    goto :goto_e

    .line 879
    :cond_1e
    move v1, v5

    move v2, v6

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    goto :goto_e

    .line 826
    .end local v1    # "nalHrdParametersPresent":Z
    .end local v2    # "vclHrdParametersPresent":Z
    .end local v12    # "aspectRatioInfoPresentFlag":Z
    :cond_1f
    move v1, v5

    move v2, v6

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    .line 890
    .end local v5    # "colorSpace":I
    .end local v6    # "colorRange":I
    .end local v9    # "colorTransfer":I
    .end local v10    # "pixelWidthHeightRatio":F
    .end local v11    # "maxNumReorderFrames":I
    .local v1, "colorSpace":I
    .local v2, "colorRange":I
    .local v43, "colorTransfer":I
    .local v44, "pixelWidthHeightRatio":F
    .local v45, "maxNumReorderFrames":I
    :goto_e
    new-instance v46, Landroidx/media3/container/NalUnitUtil$SpsData;

    move-object/from16 v5, v46

    move v6, v15

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v35

    move/from16 v11, v41

    move/from16 v12, v42

    move/from16 v47, v13

    .end local v13    # "picOrderCntType":I
    .local v47, "picOrderCntType":I
    move/from16 v13, v44

    move/from16 v14, v30

    move/from16 v48, v15

    .end local v15    # "profileIdc":I
    .local v48, "profileIdc":I
    move/from16 v15, v31

    move/from16 v16, v29

    move/from16 v17, v38

    move/from16 v18, v32

    move/from16 v19, v47

    move/from16 v20, v33

    move/from16 v21, v34

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v43

    move/from16 v25, v45

    invoke-direct/range {v5 .. v25}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v46
.end method

.method private static skipH265DpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V
    .locals 6
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "numOutputLayerSets"    # I
    .param p2, "maxSubLayersInLayerSet"    # [I
    .param p3, "numLayersInIdList"    # [I
    .param p4, "necessaryLayerFlag"    # [[Z

    .line 2177
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_6

    .line 2178
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 2179
    .local v1, "subLayerFlagInfoPresentFlag":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget v3, p2, v0

    if-ge v2, v3, :cond_5

    .line 2181
    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    .line 2182
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .local v3, "subLayerDpbInfoPresentFlag":Z
    goto :goto_2

    .line 2184
    .end local v3    # "subLayerDpbInfoPresentFlag":Z
    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 2186
    .restart local v3    # "subLayerDpbInfoPresentFlag":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 2187
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_3
    aget v5, p3, v0

    if-ge v4, v5, :cond_3

    .line 2189
    aget-object v5, p4, v0

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_2

    .line 2190
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2187
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2193
    .end local v4    # "k":I
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2194
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2179
    .end local v3    # "subLayerDpbInfoPresentFlag":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2177
    .end local v1    # "subLayerFlagInfoPresentFlag":Z
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2198
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private static skipH265HrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;ZI)V
    .locals 11
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "commonInfPresentFlag"    # Z
    .param p2, "maxSubLayersMinus1"    # I

    .line 1971
    const/4 v0, 0x0

    .line 1972
    .local v0, "nalHrdParametersPresentFlag":Z
    const/4 v1, 0x0

    .line 1973
    .local v1, "vclHrdParametersPresentFlag":Z
    const/4 v2, 0x0

    .line 1974
    .local v2, "subPicHrdParametersPresentFlag":Z
    if-eqz p1, :cond_3

    .line 1975
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 1976
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 1977
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 1978
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 1979
    if-eqz v2, :cond_1

    .line 1982
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1984
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1985
    if-eqz v2, :cond_2

    .line 1986
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1990
    :cond_2
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1993
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_a

    .line 1994
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 1995
    .local v4, "fixedPicRateGeneralFlag":Z
    move v5, v4

    .line 1996
    .local v5, "fixedPicRateWithinCvsFlag":Z
    const/4 v6, 0x0

    .line 1997
    .local v6, "lowDelayHrdFlag":Z
    const/4 v7, 0x0

    .line 1998
    .local v7, "cpbCntMinus1":I
    if-nez v4, :cond_4

    .line 1999
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    .line 2001
    :cond_4
    if-eqz v5, :cond_5

    .line 2002
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_1

    .line 2004
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 2006
    :goto_1
    if-nez v6, :cond_6

    .line 2007
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 2009
    :cond_6
    const/4 v8, 0x0

    .line 2010
    .local v8, "numSubLayerHrdParameters":I
    add-int/2addr v8, v0

    .line 2011
    add-int/2addr v8, v1

    .line 2012
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_9

    .line 2013
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    if-gt v10, v7, :cond_8

    .line 2014
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2015
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2016
    if-eqz v2, :cond_7

    .line 2017
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2018
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2020
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2013
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2012
    .end local v10    # "k":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1993
    .end local v4    # "fixedPicRateGeneralFlag":Z
    .end local v5    # "fixedPicRateWithinCvsFlag":Z
    .end local v6    # "lowDelayHrdFlag":Z
    .end local v7    # "cpbCntMinus1":I
    .end local v8    # "numSubLayerHrdParameters":I
    .end local v9    # "j":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2024
    .end local v3    # "i":I
    :cond_a
    return-void
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 6
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2340
    const/4 v0, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 2341
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 2342
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2344
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    .line 2346
    :cond_0
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    shl-int v3, v4, v3

    const/16 v5, 0x40

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2347
    .local v3, "coefNum":I
    if-le v0, v4, :cond_1

    .line 2349
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 2351
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 2352
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 2351
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2341
    .end local v3    # "coefNum":I
    .end local v5    # "i":I
    :cond_2
    :goto_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v4, v3

    :cond_3
    add-int/2addr v2, v4

    goto :goto_1

    .line 2340
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2357
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method private static skipH265ShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 21
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2366
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 2371
    .local v0, "numShortTermRefPicSets":I
    const/4 v1, -0x1

    .line 2372
    .local v1, "previousNumNegativePics":I
    const/4 v2, -0x1

    .line 2373
    .local v2, "previousNumPositivePics":I
    const/4 v3, 0x0

    new-array v4, v3, [I

    .line 2374
    .local v4, "previousDeltaPocS0":[I
    new-array v5, v3, [I

    .line 2375
    .local v5, "previousDeltaPocS1":[I
    const/4 v6, 0x0

    .local v6, "stRpsIdx":I
    :goto_0
    if-ge v6, v0, :cond_12

    .line 2381
    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v3

    .line 2382
    .local v8, "interRefPicSetPredictionFlag":Z
    :goto_1
    if-eqz v8, :cond_d

    .line 2383
    add-int v9, v1, v2

    .line 2385
    .local v9, "previousNumDeltaPocs":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 2386
    .local v10, "deltaRpsSign":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v7

    .line 2387
    .local v11, "absDeltaRps":I
    mul-int/lit8 v12, v10, 0x2

    rsub-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    .line 2389
    .local v12, "deltaRps":I
    add-int/lit8 v13, v9, 0x1

    new-array v13, v13, [Z

    .line 2390
    .local v13, "useDeltaFlags":[Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-gt v14, v9, :cond_2

    .line 2391
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    if-nez v15, :cond_1

    .line 2392
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    aput-boolean v15, v13, v14

    goto :goto_3

    .line 2395
    :cond_1
    aput-boolean v7, v13, v14

    .line 2390
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2401
    .end local v14    # "j":I
    :cond_2
    const/4 v7, 0x0

    .line 2402
    .local v7, "i":I
    add-int/lit8 v14, v9, 0x1

    new-array v14, v14, [I

    .line 2403
    .local v14, "deltaPocS0":[I
    add-int/lit8 v15, v9, 0x1

    new-array v15, v15, [I

    .line 2404
    .local v15, "deltaPocS1":[I
    add-int/lit8 v16, v2, -0x1

    .local v16, "j":I
    :goto_4
    if-ltz v16, :cond_4

    .line 2405
    aget v17, v5, v16

    add-int v17, v17, v12

    .line 2406
    .local v17, "dPoc":I
    if-gez v17, :cond_3

    add-int v18, v1, v16

    aget-boolean v18, v13, v18

    if-eqz v18, :cond_3

    .line 2407
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .local v18, "i":I
    aput v17, v14, v7

    move/from16 v7, v18

    .line 2404
    .end local v17    # "dPoc":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 2410
    .end local v16    # "j":I
    :cond_4
    if-gez v12, :cond_5

    aget-boolean v16, v13, v9

    if-eqz v16, :cond_5

    .line 2411
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    aput v12, v14, v7

    move/from16 v7, v16

    .line 2413
    .end local v16    # "i":I
    .restart local v7    # "i":I
    :cond_5
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "j":I
    :goto_5
    if-ge v3, v1, :cond_7

    .line 2414
    aget v17, v4, v3

    add-int v17, v17, v12

    .line 2415
    .restart local v17    # "dPoc":I
    if-gez v17, :cond_6

    aget-boolean v18, v13, v3

    if-eqz v18, :cond_6

    .line 2416
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .restart local v18    # "i":I
    aput v17, v14, v7

    move/from16 v7, v18

    .line 2413
    .end local v17    # "dPoc":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2419
    .end local v3    # "j":I
    :cond_7
    move v3, v7

    .line 2420
    .local v3, "numNegativePics":I
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 2422
    const/4 v7, 0x0

    .line 2423
    add-int/lit8 v17, v1, -0x1

    .local v17, "j":I
    :goto_6
    if-ltz v17, :cond_9

    .line 2424
    aget v18, v4, v17

    add-int v18, v18, v12

    .line 2425
    .local v18, "dPoc":I
    if-lez v18, :cond_8

    aget-boolean v19, v13, v17

    if-eqz v19, :cond_8

    .line 2426
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .local v19, "i":I
    aput v18, v15, v7

    move/from16 v7, v19

    .line 2423
    .end local v18    # "dPoc":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 2429
    .end local v17    # "j":I
    :cond_9
    if-lez v12, :cond_a

    aget-boolean v17, v13, v9

    if-eqz v17, :cond_a

    .line 2430
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "i":I
    .local v17, "i":I
    aput v12, v15, v7

    move/from16 v7, v17

    .line 2432
    .end local v17    # "i":I
    .restart local v7    # "i":I
    :cond_a
    const/16 v17, 0x0

    move/from16 v20, v17

    move/from16 v17, v0

    move/from16 v0, v20

    .local v0, "j":I
    .local v17, "numShortTermRefPicSets":I
    :goto_7
    if-ge v0, v2, :cond_c

    .line 2433
    aget v18, v5, v0

    add-int v18, v18, v12

    .line 2434
    .restart local v18    # "dPoc":I
    if-lez v18, :cond_b

    add-int v19, v1, v0

    aget-boolean v19, v13, v19

    if-eqz v19, :cond_b

    .line 2435
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .restart local v19    # "i":I
    aput v18, v15, v7

    move/from16 v7, v19

    .line 2432
    .end local v18    # "dPoc":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2438
    .end local v0    # "j":I
    :cond_c
    move v0, v7

    .line 2439
    .local v0, "numPositivePics":I
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 2440
    .end local v9    # "previousNumDeltaPocs":I
    .end local v10    # "deltaRpsSign":I
    .end local v11    # "absDeltaRps":I
    .end local v12    # "deltaRps":I
    .end local v13    # "useDeltaFlags":[Z
    .end local v15    # "deltaPocS1":[I
    .local v7, "deltaPocS1":[I
    goto :goto_c

    .line 2441
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v14    # "deltaPocS0":[I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_d
    move/from16 v17, v0

    .end local v0    # "numShortTermRefPicSets":I
    .restart local v17    # "numShortTermRefPicSets":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 2442
    .restart local v3    # "numNegativePics":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 2443
    .local v0, "numPositivePics":I
    new-array v14, v3, [I

    .line 2444
    .restart local v14    # "deltaPocS0":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    if-ge v9, v3, :cond_f

    .line 2445
    nop

    .line 2446
    if-lez v9, :cond_e

    add-int/lit8 v10, v9, -0x1

    aget v10, v14, v10

    goto :goto_9

    :cond_e
    const/4 v10, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v7

    sub-int/2addr v10, v11

    aput v10, v14, v9

    .line 2447
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2444
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2449
    .end local v9    # "i":I
    :cond_f
    new-array v9, v0, [I

    .line 2450
    .local v9, "deltaPocS1":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    if-ge v10, v0, :cond_11

    .line 2451
    nop

    .line 2452
    if-lez v10, :cond_10

    add-int/lit8 v11, v10, -0x1

    aget v11, v9, v11

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/2addr v12, v7

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 2453
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2450
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_11
    move-object v7, v9

    .line 2456
    .end local v9    # "deltaPocS1":[I
    .end local v10    # "i":I
    .restart local v7    # "deltaPocS1":[I
    :goto_c
    move v1, v3

    .line 2457
    move v2, v0

    .line 2458
    move-object v4, v14

    .line 2459
    move-object v5, v7

    .line 2375
    .end local v0    # "numPositivePics":I
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v8    # "interRefPicSetPredictionFlag":Z
    .end local v14    # "deltaPocS0":[I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2461
    .end local v6    # "stRpsIdx":I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_12
    return-void
.end method

.method private static skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 2
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2325
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2326
    .local v0, "codedPictureBufferCount":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2328
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2329
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2330
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2336
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2337
    return-void
.end method

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .line 2312
    const/16 v0, 0x8

    .line 2313
    .local v0, "lastScale":I
    const/16 v1, 0x8

    .line 2314
    .local v1, "nextScale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2315
    if-eqz v1, :cond_0

    .line 2316
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v3

    .line 2317
    .local v3, "deltaScale":I
    add-int v4, v0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    move v1, v4

    .line 2319
    .end local v3    # "deltaScale":I
    :cond_0
    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v0, v3

    .line 2314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2321
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static skipToH265VuiPresentFlagAfterDpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[[Z)V
    .locals 4
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "maxLayers"    # I
    .param p2, "directDependencyFlag"    # [[Z

    .line 2207
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 2208
    .local v0, "directDepTypeLen":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2209
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_2

    .line 2213
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 2214
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2215
    aget-object v3, p2, v1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 2216
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2213
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2221
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 2222
    .local v1, "nonVuiExtensionLen":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_4

    .line 2223
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2222
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2225
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .line 531
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, "position":I
    const/4 v2, 0x0

    .line 534
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_2

    .line 535
    :try_start_0
    invoke-static {p0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v3

    move v1, v3

    .line 536
    if-ge v1, p1, :cond_0

    .line 537
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v3, v3

    if-gt v3, v2, :cond_1

    .line 539
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    .line 540
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    sput-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 542
    :cond_1
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v1, v3, v2

    .line 543
    add-int/lit8 v1, v1, 0x3

    move v2, v4

    goto :goto_0

    .line 563
    .end local v1    # "position":I
    .end local v4    # "scratchEscapeCount":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 547
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int v3, p1, v2

    .line 548
    .local v3, "unescapedLength":I
    const/4 v4, 0x0

    .line 549
    .local v4, "escapedPosition":I
    const/4 v5, 0x0

    .line 550
    .local v5, "unescapedPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 551
    sget-object v7, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    aget v7, v7, v6

    .line 552
    .local v7, "nextEscapePosition":I
    sub-int v8, v7, v4

    .line 553
    .local v8, "copyLength":I
    invoke-static {p0, v4, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    add-int/2addr v5, v8

    .line 555
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "unescapedPosition":I
    .local v9, "unescapedPosition":I
    const/4 v10, 0x0

    aput-byte v10, p0, v5

    .line 556
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v10, p0, v9

    .line 557
    add-int/lit8 v9, v8, 0x3

    add-int/2addr v4, v9

    .line 550
    .end local v7    # "nextEscapePosition":I
    .end local v8    # "copyLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 560
    .end local v6    # "i":I
    :cond_3
    sub-int v6, v3, v5

    .line 561
    .local v6, "remainingLength":I
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    monitor-exit v0

    return v3

    .line 563
    .end local v1    # "position":I
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4    # "escapedPosition":I
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
