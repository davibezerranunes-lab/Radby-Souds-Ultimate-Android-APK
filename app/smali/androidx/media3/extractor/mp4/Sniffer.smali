.class public final Landroidx/media3/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field public static final BRAND_HEIC:I = 0x68656963

.field public static final BRAND_QUICKTIME:I = 0x71742020

.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method private static isCompatibleBrand(IZ)Z
    .locals 6
    .param p0, "brand"    # I
    .param p1, "acceptHeic"    # Z

    .line 235
    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 237
    return v2

    .line 238
    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    .line 239
    return v2

    .line 241
    :cond_1
    sget-object v0, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget v5, v0, v4

    .line 242
    .local v5, "compatibleBrand":I
    if-ne v5, p0, :cond_2

    .line 243
    return v2

    .line 241
    .end local v5    # "compatibleBrand":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_3
    return v3
.end method

.method public static sniffFragmented(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/SniffFailure;
    .locals 2
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    move-result-object v0

    return-object v0
.end method

.method private static sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;
    .locals 23
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .param p2, "acceptHeic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 114
    .local v2, "inputLength":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x1000

    if-eqz v6, :cond_1

    cmp-long v6, v2, v7

    if-lez v6, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    move-wide v7, v2

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    nop

    .line 116
    :goto_1
    long-to-int v6, v7

    .line 118
    .local v6, "bytesToSearch":I
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 119
    .local v7, "buffer":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v8, 0x0

    .line 120
    .local v8, "bytesSearched":I
    const/4 v9, 0x0

    .line 121
    .local v9, "foundGoodFileType":Z
    const/4 v10, 0x0

    .line 122
    .local v10, "isFragmented":Z
    :goto_2
    if-ge v8, v6, :cond_13

    .line 124
    const/16 v11, 0x8

    .line 125
    .local v11, "headerSize":I
    invoke-virtual {v7, v11}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 126
    nop

    .line 127
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface {v0, v12, v13, v11, v14}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v12

    .line 128
    .local v12, "success":Z
    if-nez v12, :cond_2

    .line 130
    move-wide/from16 v19, v2

    move/from16 v17, v6

    goto/16 :goto_8

    .line 132
    :cond_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 133
    .local v14, "atomSize":J
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 134
    .local v13, "atomType":I
    const-wide/16 v17, 0x1

    cmp-long v17, v14, v17

    const/16 v4, 0x8

    if-nez v17, :cond_3

    .line 136
    const/16 v11, 0x10

    .line 137
    nop

    .line 138
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 137
    invoke-interface {v0, v5, v4, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 139
    const/16 v5, 0x10

    invoke-virtual {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 140
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v14

    goto :goto_3

    .line 141
    :cond_3
    const-wide/16 v19, 0x0

    cmp-long v5, v14, v19

    if-nez v5, :cond_4

    .line 143
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v19

    .line 144
    .local v19, "fileEndPosition":J
    const-wide/16 v17, -0x1

    cmp-long v5, v19, v17

    if-eqz v5, :cond_4

    .line 145
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v21

    sub-long v21, v19, v21

    int-to-long v4, v11

    add-long v14, v21, v4

    .line 149
    .end local v19    # "fileEndPosition":J
    :cond_4
    :goto_3
    int-to-long v4, v11

    cmp-long v4, v14, v4

    if-gez v4, :cond_5

    .line 151
    new-instance v4, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    invoke-direct {v4, v13, v14, v15, v11}, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IJI)V

    return-object v4

    .line 153
    :cond_5
    add-int/2addr v8, v11

    .line 155
    const v4, 0x6d6f6f76

    if-ne v13, v4, :cond_7

    .line 158
    long-to-int v4, v14

    add-int/2addr v6, v4

    .line 159
    const-wide/16 v4, -0x1

    cmp-long v16, v2, v4

    if-eqz v16, :cond_6

    int-to-long v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_6

    .line 161
    long-to-int v6, v2

    const-wide/16 v4, -0x1

    goto :goto_2

    .line 122
    .end local v11    # "headerSize":I
    .end local v12    # "success":Z
    .end local v13    # "atomType":I
    .end local v14    # "atomSize":J
    :cond_6
    const-wide/16 v4, -0x1

    goto :goto_2

    .line 167
    .restart local v11    # "headerSize":I
    .restart local v12    # "success":Z
    .restart local v13    # "atomType":I
    .restart local v14    # "atomSize":J
    :cond_7
    const v4, 0x6d6f6f66

    if-eq v13, v4, :cond_12

    const v4, 0x6d766578

    if-ne v13, v4, :cond_8

    move-wide/from16 v19, v2

    move/from16 v17, v6

    goto/16 :goto_7

    .line 173
    :cond_8
    const v4, 0x6d646174

    if-ne v13, v4, :cond_9

    .line 176
    const/4 v9, 0x1

    .line 179
    :cond_9
    int-to-long v4, v8

    add-long/2addr v4, v14

    move-wide/from16 v19, v2

    .end local v2    # "inputLength":J
    .local v19, "inputLength":J
    int-to-long v2, v11

    sub-long/2addr v4, v2

    int-to-long v2, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_a

    .line 181
    move/from16 v17, v6

    goto/16 :goto_8

    .line 184
    :cond_a
    int-to-long v2, v11

    sub-long v2, v14, v2

    long-to-int v2, v2

    .line 185
    .local v2, "atomDataSize":I
    add-int/2addr v8, v2

    .line 186
    const v3, 0x66747970

    if-ne v13, v3, :cond_11

    .line 188
    const/16 v3, 0x8

    if-ge v2, v3, :cond_b

    .line 189
    new-instance v4, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    move/from16 v17, v6

    .end local v6    # "bytesToSearch":I
    .local v17, "bytesToSearch":I
    int-to-long v5, v2

    invoke-direct {v4, v13, v5, v6, v3}, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IJI)V

    return-object v4

    .line 191
    .end local v17    # "bytesToSearch":I
    .restart local v6    # "bytesToSearch":I
    :cond_b
    move/from16 v17, v6

    .end local v6    # "bytesToSearch":I
    .restart local v17    # "bytesToSearch":I
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 192
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 193
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 194
    .local v3, "majorBrand":I
    invoke-static {v3, v1}, Landroidx/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 195
    const/4 v9, 0x1

    .line 198
    :cond_c
    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 199
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    div-int/2addr v5, v4

    .line 200
    .local v5, "compatibleBrandsCount":I
    const/4 v4, 0x0

    .line 201
    .local v4, "compatibleBrands":[I
    if-nez v9, :cond_f

    if-lez v5, :cond_f

    .line 202
    new-array v4, v5, [I

    .line 203
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_e

    .line 204
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v16

    aput v16, v4, v6

    .line 205
    move/from16 v16, v5

    .end local v5    # "compatibleBrandsCount":I
    .local v16, "compatibleBrandsCount":I
    aget v5, v4, v6

    invoke-static {v5, v1}, Landroidx/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 206
    const/4 v9, 0x1

    .line 207
    goto :goto_5

    .line 203
    :cond_d
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    goto :goto_4

    .end local v16    # "compatibleBrandsCount":I
    .restart local v5    # "compatibleBrandsCount":I
    :cond_e
    move/from16 v16, v5

    .end local v5    # "compatibleBrandsCount":I
    .restart local v16    # "compatibleBrandsCount":I
    goto :goto_5

    .line 201
    .end local v6    # "i":I
    .end local v16    # "compatibleBrandsCount":I
    .restart local v5    # "compatibleBrandsCount":I
    :cond_f
    move/from16 v16, v5

    .line 211
    .end local v5    # "compatibleBrandsCount":I
    .restart local v16    # "compatibleBrandsCount":I
    :goto_5
    if-nez v9, :cond_10

    .line 213
    new-instance v5, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;

    invoke-direct {v5, v3, v4}, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;-><init>(I[I)V

    return-object v5

    .line 215
    .end local v3    # "majorBrand":I
    .end local v4    # "compatibleBrands":[I
    .end local v16    # "compatibleBrandsCount":I
    :cond_10
    goto :goto_6

    .end local v17    # "bytesToSearch":I
    .local v6, "bytesToSearch":I
    :cond_11
    move/from16 v17, v6

    .end local v6    # "bytesToSearch":I
    .restart local v17    # "bytesToSearch":I
    if-eqz v2, :cond_10

    .line 217
    invoke-interface {v0, v2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 219
    .end local v2    # "atomDataSize":I
    .end local v11    # "headerSize":I
    .end local v12    # "success":Z
    .end local v13    # "atomType":I
    .end local v14    # "atomSize":J
    :goto_6
    move/from16 v6, v17

    move-wide/from16 v2, v19

    const-wide/16 v4, -0x1

    goto/16 :goto_2

    .line 167
    .end local v17    # "bytesToSearch":I
    .end local v19    # "inputLength":J
    .local v2, "inputLength":J
    .restart local v6    # "bytesToSearch":I
    .restart local v11    # "headerSize":I
    .restart local v12    # "success":Z
    .restart local v13    # "atomType":I
    .restart local v14    # "atomSize":J
    :cond_12
    move-wide/from16 v19, v2

    move/from16 v17, v6

    .line 169
    .end local v2    # "inputLength":J
    .end local v6    # "bytesToSearch":I
    .restart local v17    # "bytesToSearch":I
    .restart local v19    # "inputLength":J
    :goto_7
    const/4 v10, 0x1

    .line 170
    goto :goto_8

    .line 122
    .end local v11    # "headerSize":I
    .end local v12    # "success":Z
    .end local v13    # "atomType":I
    .end local v14    # "atomSize":J
    .end local v17    # "bytesToSearch":I
    .end local v19    # "inputLength":J
    .restart local v2    # "inputLength":J
    .restart local v6    # "bytesToSearch":I
    :cond_13
    move-wide/from16 v19, v2

    move/from16 v17, v6

    .line 220
    .end local v2    # "inputLength":J
    .end local v6    # "bytesToSearch":I
    .restart local v17    # "bytesToSearch":I
    .restart local v19    # "inputLength":J
    :goto_8
    if-nez v9, :cond_14

    .line 221
    sget-object v2, Landroidx/media3/extractor/mp4/NoDeclaredBrandSniffFailure;->INSTANCE:Landroidx/media3/extractor/mp4/NoDeclaredBrandSniffFailure;

    return-object v2

    .line 222
    :cond_14
    move/from16 v2, p1

    if-eq v2, v10, :cond_16

    .line 223
    if-eqz v10, :cond_15

    .line 224
    sget-object v3, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->FILE_FRAGMENTED:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    goto :goto_9

    .line 225
    :cond_15
    sget-object v3, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->FILE_NOT_FRAGMENTED:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 223
    :goto_9
    return-object v3

    .line 227
    :cond_16
    const/4 v3, 0x0

    return-object v3
.end method

.method public static sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;
    .locals 1
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "acceptHeic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    move-result-object v0

    return-object v0
.end method
