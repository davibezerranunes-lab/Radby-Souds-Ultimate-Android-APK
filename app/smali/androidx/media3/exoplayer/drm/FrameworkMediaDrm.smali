.class public final Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field public static final DEFAULT_PROVIDER:Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;

.field private static final MOCK_LA_URL:Ljava/lang/String; = "<LA_URL>https://x</LA_URL>"

.field private static final MOCK_LA_URL_VALUE:Ljava/lang/String; = "https://x"

.field private static final TAG:Ljava/lang/String; = "FrameworkMediaDrm"

.field private static final UTF_16_BYTES_PER_CHARACTER:I = 0x2


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;

.field private referenceCount:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 115
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 116
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 118
    iput v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    .line 119
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->needsForceWidevineL3Workaround()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->forceWidevineL3(Landroid/media/MediaDrm;)V

    .line 122
    :cond_0
    return-void
.end method

.method private static addLaUrlAttributeIfMissing([B)[B
    .locals 11
    .param p0, "data"    # [B

    .line 553
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 556
    .local v0, "byteArray":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 557
    .local v1, "length":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v2

    .line 558
    .local v2, "objectRecordCount":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v3

    .line 559
    .local v3, "recordType":I
    const-string v4, "FrameworkMediaDrm"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v5

    .line 564
    .local v5, "recordLength":I
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "xml":Ljava/lang/String;
    const-string v7, "<LA_URL>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 567
    return-object p0

    .line 570
    :cond_1
    const-string v7, "</DATA>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 571
    .local v7, "endOfDataTagIndex":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 572
    const-string v8, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v4, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 577
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "xmlWithMockLaUrl":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 579
    .local v8, "extraBytes":I
    add-int v9, v1, v8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 580
    .local v9, "newData":Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 581
    add-int v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 582
    int-to-short v10, v2

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 583
    int-to-short v10, v3

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 584
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    int-to-short v10, v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 585
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 586
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    return-object v10

    .line 560
    .end local v4    # "xmlWithMockLaUrl":Ljava/lang/String;
    .end local v5    # "recordLength":I
    .end local v6    # "xml":Ljava/lang/String;
    .end local v7    # "endOfDataTagIndex":I
    .end local v8    # "extraBytes":I
    .end local v9    # "newData":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_0
    const-string v5, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-object p0
.end method

.method private adjustLicenseServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "licenseServerUrl"    # Ljava/lang/String;

    .line 246
    const-string v0, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 247
    return-object v1

    .line 249
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    const-string v0, "https://default.url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "pluginVersion":Ljava/lang/String;
    const-string v2, "1.2"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "aidl-1"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    :cond_1
    return-object v1

    .line 256
    .end local v0    # "pluginVersion":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method private static adjustRequestData(Ljava/util/UUID;[B)[B
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "requestData"    # [B

    .line 527
    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    return-object p1
.end method

.method private static adjustRequestInitData(Ljava/util/UUID;[B)[B
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "initData"    # [B

    .line 482
    sget-object v0, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-static {p1, p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 484
    .local v0, "schemeSpecificData":[B
    if-nez v0, :cond_0

    .line 486
    move-object v0, p1

    .line 488
    :cond_0
    sget-object v1, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 490
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->addLaUrlAttributeIfMissing([B)[B

    move-result-object v2

    .line 489
    invoke-static {v1, v2}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p1

    .line 500
    .end local v0    # "schemeSpecificData":[B
    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 501
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 502
    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 503
    const-string v1, "AFTB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 504
    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 505
    const-string v1, "AFTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 506
    const-string v1, "AFTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    :cond_3
    invoke-static {p1, p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 508
    .local v0, "psshData":[B
    if-eqz v0, :cond_4

    .line 510
    return-object v0

    .line 513
    .end local v0    # "psshData":[B
    :cond_4
    return-object p1
.end method

.method private static adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 518
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 519
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const-string/jumbo v0, "video/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    const-string v0, "cenc"

    return-object v0

    .line 523
    :cond_1
    return-object p1
.end method

.method private static adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 477
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static forceWidevineL3(Landroid/media/MediaDrm;)V
    .locals 2
    .param p0, "mediaDrm"    # Landroid/media/MediaDrm;

    .line 534
    const-string/jumbo v0, "securityLevel"

    const-string v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private static getSchemeData(Ljava/util/UUID;Ljava/util/List;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 10
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;)",
            "Landroidx/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .line 422
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    return-object v0

    .line 427
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 429
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 430
    .local v0, "firstSchemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    const/4 v2, 0x0

    .line 431
    .local v2, "concatenatedDataLength":I
    const/4 v4, 0x1

    .line 432
    .local v4, "canConcatenateData":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 433
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 434
    .local v6, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    iget-object v7, v6, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 435
    .local v7, "schemeDataData":[B
    iget-object v8, v6, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v6, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 436
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 437
    invoke-static {v7}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->isPsshAtom([B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 438
    array-length v8, v7

    add-int/2addr v2, v8

    .line 432
    .end local v6    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v7    # "schemeDataData":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 440
    .restart local v6    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .restart local v7    # "schemeDataData":[B
    :cond_1
    const/4 v4, 0x0

    .line 441
    nop

    .line 444
    .end local v5    # "i":I
    .end local v6    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v7    # "schemeDataData":[B
    :cond_2
    if-eqz v4, :cond_4

    .line 445
    new-array v3, v2, [B

    .line 446
    .local v3, "concatenatedData":[B
    const/4 v5, 0x0

    .line 447
    .local v5, "concatenatedDataPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 448
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 449
    .local v7, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    iget-object v8, v7, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 450
    .local v8, "schemeDataData":[B
    array-length v9, v8

    .line 451
    .local v9, "schemeDataLength":I
    invoke-static {v8, v1, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    add-int/2addr v5, v9

    .line 447
    .end local v7    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v8    # "schemeDataData":[B
    .end local v9    # "schemeDataLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 455
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "firstSchemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v2    # "concatenatedDataLength":I
    .end local v3    # "concatenatedData":[B
    .end local v4    # "canConcatenateData":Z
    .end local v5    # "concatenatedDataPosition":I
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 462
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 463
    .local v2, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v4

    .line 464
    .local v4, "version":I
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_5

    if-nez v4, :cond_5

    .line 465
    return-object v2

    .line 466
    :cond_5
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v6, :cond_6

    if-ne v4, v3, :cond_6

    .line 467
    return-object v2

    .line 461
    .end local v2    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v4    # "version":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 472
    .end local v0    # "i":I
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    return-object v0
.end method

.method public static isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 90
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private isMediaDrmRequiresSecureDecoderImplemented()Z
    .locals 2

    .line 408
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    sget-object v1, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "pluginVersion":Ljava/lang/String;
    const-string/jumbo v1, "v5."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const-string v1, "14."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const-string v1, "15."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    const-string v1, "16.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    return v1

    .line 417
    .end local v0    # "pluginVersion":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    sget-object v1, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/ExoMediaDrm;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 68
    :try_start_0
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroidx/media3/exoplayer/drm/UnsupportedDrmException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameworkMediaDrm"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroidx/media3/exoplayer/drm/DummyExoMediaDrm;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DummyExoMediaDrm;-><init>()V

    return-object v1
.end method

.method private static needsForceWidevineL3Workaround()Z
    .locals 2

    .line 543
    const-string v0, "ASUS_Z00AD"

    sget-object v1, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 104
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    new-instance v1, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 2

    monitor-enter p0

    .line 317
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 318
    iget v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 316
    .end local p0    # "this":Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public closeSession([B)V
    .locals 1
    .param p1, "sessionId"    # [B

    .line 194
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 195
    return-void
.end method

.method public bridge synthetic createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->createCryptoConfig([B)Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    move-result-object p1

    return-object p1
.end method

.method public createCryptoConfig([B)Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;
    .locals 2
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 392
    new-instance v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public getCryptoType()I
    .locals 1

    .line 398
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .locals 9
    .param p1, "scope"    # [B
    .param p3, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 219
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local p4, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 220
    .local v0, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    const/4 v1, 0x0

    .line 221
    .local v1, "initData":[B
    const/4 v2, 0x0

    .line 222
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 223
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v3, p2}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->getSchemeData(Ljava/util/UUID;Ljava/util/List;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    .line 224
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustRequestInitData(Ljava/util/UUID;[B)[B

    move-result-object v1

    .line 225
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v1

    move-object v8, v2

    goto :goto_0

    .line 222
    :cond_0
    move-object v7, v1

    move-object v8, v2

    .line 227
    .end local v1    # "initData":[B
    .end local v2    # "mimeType":Ljava/lang/String;
    .local v7, "initData":[B
    .local v8, "mimeType":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 228
    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    .line 230
    .local v1, "request":Landroid/media/MediaDrm$KeyRequest;
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustRequestData(Ljava/util/UUID;[B)[B

    move-result-object v2

    .line 231
    .local v2, "requestData":[B
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->adjustLicenseServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "licenseServerUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, v0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    iget-object v3, v0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 240
    :cond_1
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v4

    goto :goto_1

    :cond_2
    const/high16 v4, -0x80000000

    .line 242
    .local v4, "requestType":I
    :goto_1
    new-instance v5, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {v5, v2, v3, v4}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-object v5
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 2

    .line 359
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineLicenseKeySetIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 349
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getOfflineLicenseKeySetIds()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .locals 4

    .line 274
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 275
    .local v0, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method synthetic lambda$setOnEventListener$1$androidx-media3-exoplayer-drm-FrameworkMediaDrm(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V
    .locals 6
    .param p1, "listener"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "event"    # I
    .param p5, "extra"    # I
    .param p6, "data"    # [B

    .line 131
    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;->onEvent(Landroidx/media3/exoplayer/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method

.method synthetic lambda$setOnExpirationUpdateListener$3$androidx-media3-exoplayer-drm-FrameworkMediaDrm(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm;[BJ)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "expirationTimeMs"    # J

    .line 181
    invoke-interface {p1, p0, p3, p4, p5}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroidx/media3/exoplayer/drm/ExoMediaDrm;[BJ)V

    return-void
.end method

.method synthetic lambda$setOnKeyStatusChangeListener$2$androidx-media3-exoplayer-drm-FrameworkMediaDrm(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6
    .param p1, "listener"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "keyInfo"    # Ljava/util/List;
    .param p5, "hasNewUsableKey"    # Z

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "exoKeyInfo":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaDrm$KeyStatus;

    .line 155
    .local v2, "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    new-instance v3, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;

    invoke-virtual {v2}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;-><init>(I[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p1, p0, p3, v0, p5}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroidx/media3/exoplayer/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    .line 159
    return-void
.end method

.method public openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 2
    .param p1, "scope"    # [B
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 264
    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    .line 268
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public provideProvisionResponse([B)V
    .locals 1
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 282
    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 1
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 324
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local p0    # "this":Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
    :cond_0
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeOfflineLicense([B)V
    .locals 2
    .param p1, "keySetId"    # [B

    .line 339
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeOfflineLicense([B)V

    .line 343
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .locals 3
    .param p1, "sessionId"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 294
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->isMediaDrmRequiresSecureDecoderImplemented()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 296
    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->getSecurityLevel([B)I

    move-result v1

    invoke-static {v0, p2, v1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_1

    .line 298
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "mediaCrypto":Landroid/media/MediaCrypto;
    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-direct {v1, v2, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    move-object v0, v1

    .line 301
    invoke-virtual {v0, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .local v1, "result":Z
    goto :goto_0

    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 309
    :cond_1
    throw v1

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/media/MediaCryptoException;
    const/4 v1, 0x1

    .line 306
    .local v1, "result":Z
    if-eqz v0, :cond_2

    .line 307
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 311
    .end local v0    # "mediaCrypto":Landroid/media/MediaCrypto;
    :cond_2
    move v0, v1

    .end local v1    # "result":Z
    .local v0, "result":Z
    :goto_1
    return v0
.end method

.method public restoreKeys([B[B)V
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "keySetId"    # [B

    .line 332
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 333
    return-void
.end method

.method public setOnEventListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 128
    if-nez p1, :cond_0

    .line 129
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    .line 127
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 132
    return-void
.end method

.method public setOnExpirationUpdateListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;

    .line 173
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 178
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 179
    move-object v2, v1

    goto :goto_0

    .line 180
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;)V

    :goto_0
    nop

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 183
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnKeyStatusChangeListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    .line 145
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 150
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 151
    move-object v2, v1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V

    :goto_0
    nop

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 161
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPlayerIdForSession([BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3
    .param p1, "sessionId"    # [B
    .param p2, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 200
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "FrameworkMediaDrm"

    const-string/jumbo v2, "setLogSessionId failed."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 386
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 387
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method
