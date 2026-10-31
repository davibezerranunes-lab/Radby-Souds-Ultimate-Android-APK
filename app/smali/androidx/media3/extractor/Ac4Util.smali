.class public final Landroidx/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac4Util$Ac4Presentation;,
        Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field private static final CHANNEL_MODE_22_2:I = 0xf

.field private static final CHANNEL_MODE_3_0:I = 0x2

.field private static final CHANNEL_MODE_5_0:I = 0x3

.field private static final CHANNEL_MODE_5_1:I = 0x4

.field private static final CHANNEL_MODE_7_0_322:I = 0x9

.field private static final CHANNEL_MODE_7_0_34:I = 0x5

.field private static final CHANNEL_MODE_7_0_4:I = 0xb

.field private static final CHANNEL_MODE_7_0_52:I = 0x7

.field private static final CHANNEL_MODE_7_1_322:I = 0xa

.field private static final CHANNEL_MODE_7_1_34:I = 0x6

.field private static final CHANNEL_MODE_7_1_4:I = 0xc

.field private static final CHANNEL_MODE_7_1_52:I = 0x8

.field private static final CHANNEL_MODE_9_0_4:I = 0xd

.field private static final CHANNEL_MODE_9_1_4:I = 0xe

.field private static final CHANNEL_MODE_MONO:I = 0x0

.field private static final CHANNEL_MODE_STEREO:I = 0x1

.field private static final CHANNEL_MODE_UNKNOWN:I = -0x1

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x52080

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p0, "size"    # I
    .param p1, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 736
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 737
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 738
    .local v0, "data":[B
    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 739
    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 740
    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 741
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 742
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 743
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 744
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 745
    return-void
.end method

.method private static getAdjustedChannelCount(IZI)I
    .locals 2
    .param p0, "channelMode"    # I
    .param p1, "hasBackChannels"    # Z
    .param p2, "topChannelPairs"    # I

    .line 572
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->getChannelCountFromChannelMode(I)I

    move-result v0

    .line 573
    .local v0, "channelCount":I
    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-ne p0, v1, :cond_2

    .line 578
    :cond_0
    if-nez p1, :cond_1

    .line 579
    add-int/lit8 v0, v0, -0x2

    .line 582
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 587
    :pswitch_0
    add-int/lit8 v0, v0, -0x2

    .line 588
    goto :goto_0

    .line 584
    :pswitch_1
    add-int/lit8 v0, v0, -0x4

    .line 585
    nop

    .line 593
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getChannelCountFromChannelMode(I)I
    .locals 1
    .param p0, "channelMode"    # I

    .line 597
    packed-switch p0, :pswitch_data_0

    .line 627
    const/4 v0, -0x1

    return v0

    .line 625
    :pswitch_0
    const/16 v0, 0x18

    return v0

    .line 623
    :pswitch_1
    const/16 v0, 0xe

    return v0

    .line 621
    :pswitch_2
    const/16 v0, 0xd

    return v0

    .line 619
    :pswitch_3
    const/16 v0, 0xc

    return v0

    .line 617
    :pswitch_4
    const/16 v0, 0xb

    return v0

    .line 615
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 611
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 607
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 605
    :pswitch_8
    const/4 v0, 0x5

    return v0

    .line 603
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 601
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 599
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 21
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 175
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 176
    .local v0, "dataBitArray":Landroidx/media3/common/util/ParsableBitArray;
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 178
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    .line 179
    .local v2, "dsiSize":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 180
    .local v4, "ac4DsiVersion":I
    const/4 v5, 0x1

    if-gt v4, v5, :cond_30

    .line 185
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 186
    .local v7, "bitstreamVersion":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0xbb80

    goto :goto_0

    :cond_0
    const v8, 0xac44

    .line 187
    .local v8, "sampleRate":I
    :goto_0
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 188
    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 190
    .local v10, "numberOfPresentations":I
    const/16 v11, 0x10

    if-le v7, v5, :cond_2

    .line 191
    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 196
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 197
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 198
    const/16 v12, 0x80

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 192
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid AC-4 DSI version: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 203
    :cond_2
    :goto_1
    if-ne v4, v5, :cond_4

    .line 204
    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 207
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_2

    .line 205
    :cond_3
    const-string v3, "Invalid AC-4 DSI bitrate."

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 210
    :cond_4
    :goto_2
    new-instance v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;-><init>(Landroidx/media3/extractor/Ac4Util$1;)V

    .line 211
    .local v12, "ac4Presentation":Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    const/4 v13, 0x0

    .local v13, "presentationIdx":I
    :goto_3
    if-ge v13, v10, :cond_2b

    .line 212
    const/4 v14, 0x0

    .line 213
    .local v14, "isSingleSubstream":Z
    const/4 v15, 0x0

    .line 216
    .local v15, "isSingleSubstreamGroup":Z
    const/16 v16, 0x0

    .line 217
    .local v16, "presentationBytes":I
    const/16 v17, 0x0

    .line 219
    .local v17, "start":I
    const/4 v9, 0x5

    const/16 v6, 0x8

    const/4 v5, 0x2

    if-nez v4, :cond_5

    .line 220
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 221
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 222
    .local v19, "presentationConfig":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v20

    move/from16 v9, v16

    move/from16 v11, v19

    move/from16 v3, v20

    .local v20, "presentationVersion":I
    goto :goto_5

    .line 224
    .end local v19    # "presentationConfig":I
    .end local v20    # "presentationVersion":I
    :cond_5
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 225
    .local v3, "presentationVersion":I
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 226
    .end local v16    # "presentationBytes":I
    .local v9, "presentationBytes":I
    const/16 v6, 0xff

    if-ne v9, v6, :cond_6

    .line 227
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v9, v6

    .line 229
    :cond_6
    if-le v3, v5, :cond_7

    .line 230
    mul-int/lit8 v5, v9, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 231
    nop

    .line 211
    .end local v3    # "presentationVersion":I
    .end local v9    # "presentationBytes":I
    .end local v14    # "isSingleSubstream":Z
    .end local v15    # "isSingleSubstreamGroup":Z
    .end local v17    # "start":I
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v9, 0x4

    goto :goto_3

    .line 234
    .restart local v3    # "presentationVersion":I
    .restart local v9    # "presentationBytes":I
    .restart local v14    # "isSingleSubstream":Z
    .restart local v15    # "isSingleSubstreamGroup":Z
    .restart local v17    # "start":I
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v6

    sub-int v6, v2, v6

    const/16 v16, 0x8

    div-int/lit8 v17, v6, 0x8

    .line 237
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 238
    .local v11, "presentationConfig":I
    const/16 v6, 0x1f

    if-ne v11, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    move v15, v6

    .line 242
    :goto_5
    if-nez v14, :cond_9

    if-nez v15, :cond_9

    const/4 v6, 0x6

    if-ne v11, v6, :cond_9

    .line 243
    const/4 v5, 0x1

    .local v5, "addEmdfSubstreams":Z
    goto/16 :goto_f

    .line 245
    .end local v5    # "addEmdfSubstreams":Z
    :cond_9
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    .line 247
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 248
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 251
    :cond_a
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 252
    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    if-eq v3, v6, :cond_b

    if-ne v3, v5, :cond_c

    .line 253
    :cond_b
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 255
    :cond_c
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 256
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 258
    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 259
    if-lez v3, :cond_d

    .line 260
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    .line 263
    :cond_d
    iget-boolean v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v5, :cond_11

    .line 264
    const/4 v5, 0x1

    if-eq v3, v5, :cond_e

    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    .line 265
    :cond_e
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 266
    .local v6, "channelMode":I
    if-ltz v6, :cond_f

    const/16 v5, 0xf

    if-gt v6, v5, :cond_f

    .line 267
    iput v6, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 270
    :cond_f
    const/16 v5, 0xb

    if-lt v6, v5, :cond_10

    const/16 v5, 0xe

    if-gt v6, v5, :cond_10

    .line 271
    nop

    .line 272
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    .line 273
    nop

    .line 274
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 278
    .end local v6    # "channelMode":I
    :cond_10
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 281
    :cond_11
    const/4 v1, 0x1

    if-eq v3, v1, :cond_12

    const/4 v1, 0x2

    if-ne v3, v1, :cond_14

    .line 282
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 283
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 284
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 287
    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 290
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 291
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 292
    .local v5, "filterBytes":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_14

    .line 293
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 292
    add-int/lit8 v6, v6, 0x1

    const/16 v1, 0x8

    goto :goto_6

    .line 299
    .end local v5    # "filterBytes":I
    .end local v6    # "i":I
    :cond_14
    if-nez v14, :cond_1e

    if-eqz v15, :cond_15

    goto/16 :goto_d

    .line 307
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 308
    packed-switch v11, :pswitch_data_0

    .line 347
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 348
    .local v5, "nSkipBytes":I
    const/4 v1, 0x0

    .local v1, "j":I
    goto :goto_c

    .line 335
    .end local v1    # "j":I
    .end local v5    # "nSkipBytes":I
    :pswitch_0
    if-nez v3, :cond_16

    .line 336
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_e

    .line 338
    :cond_16
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 339
    .local v5, "nSubstreamGroupsMinus2":I
    const/4 v1, 0x0

    .line 340
    .local v1, "substreamGroupId":I
    :goto_7
    add-int/lit8 v6, v5, 0x2

    if-ge v1, v6, :cond_17

    .line 342
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 345
    .end local v1    # "substreamGroupId":I
    .end local v5    # "nSubstreamGroupsMinus2":I
    :cond_17
    goto :goto_e

    .line 324
    :pswitch_1
    if-nez v3, :cond_19

    .line 325
    const/4 v1, 0x0

    .local v1, "substreamId":I
    :goto_8
    const/4 v5, 0x3

    if-ge v1, v5, :cond_18

    .line 326
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "substreamId":I
    :cond_18
    goto :goto_e

    .line 329
    :cond_19
    const/4 v1, 0x0

    .local v1, "substreamGroupId":I
    :goto_9
    const/4 v5, 0x3

    if-ge v1, v5, :cond_1a

    .line 330
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 333
    .end local v1    # "substreamGroupId":I
    :cond_1a
    goto :goto_e

    .line 312
    :pswitch_2
    if-nez v3, :cond_1c

    .line 313
    const/4 v1, 0x0

    .local v1, "substreamId":I
    :goto_a
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1b

    .line 314
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "substreamId":I
    :cond_1b
    goto :goto_e

    .line 317
    :cond_1c
    const/4 v1, 0x0

    .local v1, "substreamGroupId":I
    :goto_b
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1d

    .line 318
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 321
    .end local v1    # "substreamGroupId":I
    :cond_1d
    goto :goto_e

    .line 348
    .local v1, "j":I
    .local v5, "nSkipBytes":I
    :goto_c
    if-ge v1, v5, :cond_20

    .line 349
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 300
    .end local v1    # "j":I
    .end local v5    # "nSkipBytes":I
    :cond_1e
    :goto_d
    if-nez v3, :cond_1f

    .line 301
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_e

    .line 303
    :cond_1f
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 354
    :cond_20
    :goto_e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 355
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 357
    .local v5, "addEmdfSubstreams":Z
    :goto_f
    if-eqz v5, :cond_22

    .line 358
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 359
    .local v1, "nAddEmdfSubstreams":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_10
    if-ge v6, v1, :cond_21

    .line 360
    move/from16 v18, v1

    const/16 v1, 0xf

    .end local v1    # "nAddEmdfSubstreams":I
    .local v18, "nAddEmdfSubstreams":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 359
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    goto :goto_10

    .end local v18    # "nAddEmdfSubstreams":I
    .restart local v1    # "nAddEmdfSubstreams":I
    :cond_21
    move/from16 v18, v1

    .line 364
    .end local v1    # "nAddEmdfSubstreams":I
    .end local v6    # "j":I
    :cond_22
    if-lez v3, :cond_27

    .line 365
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 366
    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_11

    .line 367
    :cond_23
    const-string v1, "Can\'t parse bitrate DSI."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 371
    :cond_24
    :goto_11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 372
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 373
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 374
    .local v1, "nameLen":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 376
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 377
    .local v6, "nTargets":I
    const/16 v18, 0x0

    move/from16 v20, v1

    move/from16 v1, v18

    .local v1, "i":I
    .local v20, "nameLen":I
    :goto_12
    if-ge v1, v6, :cond_25

    .line 378
    move/from16 v18, v3

    const/4 v3, 0x3

    .end local v3    # "presentationVersion":I
    .local v18, "presentationVersion":I
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 379
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v18

    goto :goto_12

    .end local v18    # "presentationVersion":I
    .restart local v3    # "presentationVersion":I
    :cond_25
    move/from16 v18, v3

    .end local v3    # "presentationVersion":I
    .restart local v18    # "presentationVersion":I
    goto :goto_13

    .line 371
    .end local v1    # "i":I
    .end local v6    # "nTargets":I
    .end local v18    # "presentationVersion":I
    .end local v20    # "nameLen":I
    .restart local v3    # "presentationVersion":I
    :cond_26
    move/from16 v18, v3

    .end local v3    # "presentationVersion":I
    .restart local v18    # "presentationVersion":I
    goto :goto_13

    .line 364
    .end local v18    # "presentationVersion":I
    .restart local v3    # "presentationVersion":I
    :cond_27
    move/from16 v18, v3

    .line 384
    .end local v3    # "presentationVersion":I
    .restart local v18    # "presentationVersion":I
    :goto_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 386
    const/4 v1, 0x1

    if-ne v4, v1, :cond_29

    .line 387
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    sub-int v1, v2, v1

    const/16 v3, 0x8

    div-int/2addr v1, v3

    .line 388
    .local v1, "end":I
    sub-int v3, v1, v17

    .line 389
    .local v3, "presentationBytesRead":I
    if-lt v9, v3, :cond_28

    .line 393
    sub-int v6, v9, v3

    .line 394
    .local v6, "skipBytes":I
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_14

    .line 390
    .end local v6    # "skipBytes":I
    :cond_28
    const-string/jumbo v6, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v6}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6

    .line 398
    .end local v1    # "end":I
    .end local v3    # "presentationBytesRead":I
    :cond_29
    :goto_14
    iget-boolean v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v1, :cond_2b

    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2a

    goto :goto_15

    .line 399
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine channel mode of presentation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 406
    .end local v5    # "addEmdfSubstreams":Z
    .end local v9    # "presentationBytes":I
    .end local v11    # "presentationConfig":I
    .end local v13    # "presentationIdx":I
    .end local v14    # "isSingleSubstream":Z
    .end local v15    # "isSingleSubstreamGroup":Z
    .end local v17    # "start":I
    .end local v18    # "presentationVersion":I
    :cond_2b
    :goto_15
    iget-boolean v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v1, :cond_2c

    .line 407
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 408
    invoke-static {v1, v3, v5}, Landroidx/media3/extractor/Ac4Util;->getAdjustedChannelCount(IZI)I

    move-result v1

    .local v1, "channelCount":I
    goto :goto_17

    .line 421
    .end local v1    # "channelCount":I
    :cond_2c
    const/4 v1, 0x1

    .line 422
    .local v1, "lfeChannelCount":I
    iget v3, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    add-int/2addr v3, v1

    .line 427
    .local v3, "channelCount":I
    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2e

    .line 428
    const/16 v5, 0x11

    if-ne v3, v5, :cond_2d

    const/16 v5, 0x15

    goto :goto_16

    :cond_2d
    move v5, v3

    :goto_16
    move v3, v5

    move v1, v3

    goto :goto_17

    .line 427
    :cond_2e
    move v1, v3

    .line 432
    .end local v3    # "channelCount":I
    .local v1, "channelCount":I
    :goto_17
    if-lez v1, :cond_2f

    .line 437
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 438
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 439
    const-string v6, "audio/ac4"

    invoke-virtual {v3, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 440
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 441
    invoke-virtual {v3, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 442
    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 443
    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 444
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 437
    return-object v3

    .line 433
    :cond_2f
    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v6, p3

    const-string v3, "Can\'t determine channel count of presentation."

    invoke-static {v3}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 181
    .end local v1    # "channelCount":I
    .end local v7    # "bitstreamVersion":I
    .end local v8    # "sampleRate":I
    .end local v10    # "numberOfPresentations":I
    .end local v12    # "ac4Presentation":Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    :cond_30
    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v6, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported AC-4 DSI version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 726
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 727
    .local v0, "bufferBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 728
    .local v1, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 729
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 730
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {v2}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object v2

    iget v2, v2, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return v2
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    .locals 17
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 639
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 640
    .local v1, "headerSize":I
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 641
    .local v3, "syncWord":I
    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 642
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 643
    .local v2, "frameSize":I
    add-int/2addr v1, v4

    .line 644
    const v5, 0xffff

    if-ne v2, v5, :cond_0

    .line 645
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 646
    add-int/lit8 v1, v1, 0x3

    .line 648
    :cond_0
    add-int/2addr v2, v1

    .line 649
    const v5, 0xac41

    if-ne v3, v5, :cond_1

    .line 650
    add-int/lit8 v2, v2, 0x2

    .line 652
    :cond_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 653
    .local v5, "bitstreamVersion":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 654
    invoke-static {v0, v4}, Landroidx/media3/extractor/Ac4Util;->readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I

    move-result v7

    add-int/2addr v5, v7

    move v12, v5

    goto :goto_0

    .line 653
    :cond_2
    move v12, v5

    .line 656
    .end local v5    # "bitstreamVersion":I
    .local v12, "bitstreamVersion":I
    :goto_0
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 657
    .local v13, "sequenceCounter":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 658
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 659
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 662
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v5, 0xbb80

    const v7, 0xac44

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v7

    .line 663
    .local v4, "sampleRate":I
    :goto_1
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 664
    .local v14, "frameRateIndex":I
    const/4 v8, 0x0

    .line 665
    .local v8, "sampleCount":I
    if-ne v4, v7, :cond_5

    const/16 v7, 0xd

    if-ne v14, v7, :cond_5

    .line 666
    sget-object v5, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    aget v8, v5, v14

    move v15, v8

    goto :goto_3

    .line 667
    :cond_5
    if-ne v4, v5, :cond_9

    sget-object v5, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    array-length v5, v5

    if-ge v14, v5, :cond_9

    .line 668
    sget-object v5, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    aget v8, v5, v14

    .line 669
    rem-int/lit8 v5, v13, 0x5

    const/16 v7, 0xb

    const/16 v9, 0x8

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 682
    :pswitch_0
    if-eq v14, v6, :cond_6

    if-eq v14, v9, :cond_6

    if-ne v14, v7, :cond_9

    .line 683
    :cond_6
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_3

    .line 677
    :pswitch_1
    if-eq v14, v9, :cond_7

    if-ne v14, v7, :cond_9

    .line 678
    :cond_7
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_3

    .line 672
    :pswitch_2
    if-eq v14, v6, :cond_8

    if-ne v14, v9, :cond_9

    .line 673
    :cond_8
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_3

    .line 690
    :cond_9
    :goto_2
    move v15, v8

    .end local v8    # "sampleCount":I
    .local v15, "sampleCount":I
    :goto_3
    new-instance v16, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    const/4 v7, 0x2

    const/4 v11, 0x0

    move-object/from16 v5, v16

    move v6, v12

    move v8, v4

    move v9, v2

    move v10, v15

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroidx/media3/extractor/Ac4Util$1;)V

    return-object v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "syncword"    # I

    .line 701
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 702
    const/4 v0, -0x1

    return v0

    .line 704
    :cond_0
    const/4 v0, 0x2

    .line 705
    .local v0, "headerSize":I
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 706
    .local v2, "frameSize":I
    add-int/2addr v0, v1

    .line 707
    const v1, 0xffff

    if-ne v2, v1, :cond_1

    .line 708
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v1, v3

    .line 709
    add-int/lit8 v0, v0, 0x3

    .line 711
    :cond_1
    const v1, 0xac41

    if-ne p1, v1, :cond_2

    .line 712
    add-int/lit8 v0, v0, 0x2

    .line 714
    :cond_2
    add-int/2addr v2, v0

    .line 715
    return v2
.end method

.method private static parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "ac4Presentation"    # Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 461
    .local v1, "channelMode":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 463
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 466
    :cond_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    .line 467
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 470
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 475
    .local v0, "contentClassifier":I
    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-ltz v1, :cond_3

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 478
    :cond_2
    iput v1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 481
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 482
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 485
    .end local v0    # "contentClassifier":I
    :cond_4
    return-void
.end method

.method private static parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 6
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "ac4Presentation"    # Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 500
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 501
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 502
    .local v1, "channelCoded":Z
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 504
    .local v2, "numberOfSubstreams":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 505
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 506
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 509
    :cond_0
    if-eqz v1, :cond_1

    .line 510
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    .line 513
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_2

    .line 514
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 516
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    .line 518
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 504
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 525
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 526
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 529
    :cond_5
    return-void
.end method

.method private static readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "bitsPerRead"    # I

    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    nop

    .line 757
    return v0

    .line 754
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 755
    shl-int/2addr v0, p1

    goto :goto_0
.end method

.method private static skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 562
    const/16 v0, 0x42

    .line 563
    .local v0, "totalBitsToSkip":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 564
    const/4 v1, 0x0

    return v1

    .line 566
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 567
    const/4 v1, 0x1

    return v1
.end method

.method private static skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 3
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 542
    .local v0, "languageTagBytesNumber":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    .line 549
    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 550
    return-void

    .line 543
    :cond_0
    nop

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 544
    const-string v2, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method
