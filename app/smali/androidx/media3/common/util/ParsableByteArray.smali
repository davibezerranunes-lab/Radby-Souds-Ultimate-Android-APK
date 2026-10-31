.class public final Landroidx/media3/common/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# static fields
.field private static final CR_AND_LF:[C

.field private static final LF:[C

.field private static final SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[B

.field private limit:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/ParsableByteArray;->CR_AND_LF:[C

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Landroidx/media3/common/util/ParsableByteArray;->LF:[C

    .line 39
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 40
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 39
    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 64
    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 74
    array-length v0, p1

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 75
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 85
    iput p2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 86
    return-void
.end method

.method private findNextLineTerminator(Ljava/nio/charset/Charset;)I
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 669
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 671
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 672
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 673
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 676
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .local v0, "stride":I
    goto :goto_2

    .line 670
    .end local v0    # "stride":I
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 678
    .restart local v0    # "stride":I
    :goto_2
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_9

    .line 679
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    .line 680
    invoke-static {v2}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 681
    return v1

    .line 682
    :cond_5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 683
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_7

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    .line 685
    invoke-static {v2}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 686
    return v1

    .line 687
    :cond_7
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    if-nez v2, :cond_8

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    .line 689
    invoke-static {v2}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 690
    return v1

    .line 678
    :cond_8
    add-int/2addr v1, v0

    goto :goto_3

    .line 693
    .end local v1    # "i":I
    :cond_9
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    return v1
.end method

.method private peekCharacterAndSize(Ljava/nio/charset/Charset;)I
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 735
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 737
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->checkedCast(J)C

    move-result v0

    int-to-byte v0, v0

    .line 738
    .local v0, "character":B
    const/4 v1, 0x1

    .local v1, "characterSize":S
    goto :goto_0

    .line 739
    .end local v0    # "character":B
    .end local v1    # "characterSize":S
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 740
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 742
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, v1

    aget-byte v1, v2, v3

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    int-to-byte v0, v0

    .line 743
    .restart local v0    # "character":B
    const/4 v1, 0x2

    .restart local v1    # "characterSize":S
    goto :goto_0

    .line 744
    .end local v0    # "character":B
    .end local v1    # "characterSize":S
    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 745
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v2, v1

    aget-byte v0, v0, v2

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    int-to-byte v0, v0

    .line 746
    .restart local v0    # "character":B
    const/4 v1, 0x2

    .line 750
    .restart local v1    # "characterSize":S
    :goto_0
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Chars;->checkedCast(J)C

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    return v2

    .line 748
    .end local v0    # "character":B
    .end local v1    # "characterSize":S
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private readCharacterIfInList(Ljava/nio/charset/Charset;[C)C
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "chars"    # [C

    .line 712
    invoke-direct {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result v0

    .line 714
    .local v0, "characterAndSize":I
    if-eqz v0, :cond_0

    shr-int/lit8 v1, v0, 0x10

    int-to-char v1, v1

    invoke-static {p2, v1}, Lcom/google/common/primitives/Chars;->contains([CC)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const v2, 0xffff

    and-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 716
    shr-int/lit8 v1, v0, 0x10

    int-to-char v1, v1

    return v1

    .line 718
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private skipLineTerminator(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 697
    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->CR_AND_LF:[C

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 698
    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->LF:[C

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .locals 2

    .line 137
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    return v0
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "requiredCapacity"    # I

    .line 130
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 133
    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 157
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .locals 1

    .line 142
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public peekChar()C
    .locals 3

    .line 250
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public peekChar(Ljava/nio/charset/Charset;)C
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 260
    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 261
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 262
    invoke-direct {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    return v0
.end method

.method public peekUnsignedByte()I
    .locals 2

    .line 240
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V
    .locals 2
    .param p1, "bitArray"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p2, "length"    # I

    .line 209
    iget-object v0, p1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 210
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 211
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .line 234
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 235
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 236
    return-void
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 222
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 224
    return-void
.end method

.method public readDelimiterTerminatedString(C)Ljava/lang/String;
    .locals 4
    .param p1, "delimiter"    # C

    .line 510
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 514
    .local v0, "stringLimit":I
    :goto_0
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v3, v0, v3

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "string":Ljava/lang/String;
    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 519
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v2, v3, :cond_2

    .line 520
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 522
    :cond_2
    return-object v1
.end method

.method public readDouble()D
    .locals 2

    .line 444
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 439
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 4

    .line 336
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readInt24()I
    .locals 4

    .line 299
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1

    .line 532
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 553
    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 554
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 555
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x0

    return-object v0

    .line 558
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    .line 561
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->findNextLineTerminator(Ljava/nio/charset/Charset;)I

    move-result v0

    .line 562
    .local v0, "lineLimit":I
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "line":Ljava/lang/String;
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ne v2, v3, :cond_2

    .line 564
    return-object v1

    .line 566
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipLineTerminator(Ljava/nio/charset/Charset;)V

    .line 567
    return-object v1
.end method

.method public readLittleEndianInt()I
    .locals 4

    .line 344
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianInt24()I
    .locals 4

    .line 306
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianLong()J
    .locals 7

    .line 364
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianShort()S
    .locals 4

    .line 287
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readLittleEndianUnsignedInt()J
    .locals 7

    .line 328
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianUnsignedInt24()I
    .locals 4

    .line 313
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .locals 4

    .line 417
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 418
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 421
    return v0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLittleEndianUnsignedShort()I
    .locals 4

    .line 277
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 7

    .line 352
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readNullTerminatedString()Ljava/lang/String;
    .locals 1

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readDelimiterTerminatedString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readNullTerminatedString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 478
    if-nez p1, :cond_0

    .line 479
    const-string v0, ""

    return-object v0

    .line 481
    :cond_0
    move v0, p1

    .line 482
    .local v0, "stringLength":I
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 483
    .local v1, "lastIndex":I
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    .line 484
    add-int/lit8 v0, v0, -0x1

    .line 486
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "result":Ljava/lang/String;
    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 488
    return-object v2
.end method

.method public readShort()S
    .locals 4

    .line 282
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "length"    # I

    .line 454
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 465
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 466
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 467
    return-object v0
.end method

.method public readSynchSafeInt()I
    .locals 6

    .line 390
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 391
    .local v0, "b1":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 392
    .local v1, "b2":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 393
    .local v2, "b3":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 394
    .local v3, "b4":I
    shl-int/lit8 v4, v0, 0x15

    shl-int/lit8 v5, v1, 0xe

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x7

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public readUnsignedByte()I
    .locals 3

    .line 267
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .locals 4

    .line 376
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 377
    .local v0, "result":I
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 378
    return v0
.end method

.method public readUnsignedInt()J
    .locals 7

    .line 320
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .locals 4

    .line 292
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .locals 4

    .line 403
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 404
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 407
    return v0

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readUnsignedLeb128ToInt()I
    .locals 2

    .line 637
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    return v0
.end method

.method public readUnsignedLeb128ToLong()J
    .locals 9

    .line 613
    const-wide/16 v0, 0x0

    .line 616
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_2

    .line 617
    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v4, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-eq v3, v4, :cond_1

    .line 620
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    int-to-long v3, v3

    .line 621
    .local v3, "currentByte":J
    const-wide/16 v5, 0x7f

    and-long/2addr v5, v3

    mul-int/lit8 v7, v2, 0x7

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 622
    const-wide/16 v5, 0x80

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 623
    goto :goto_1

    .line 616
    .end local v3    # "currentByte":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Attempting to read a byte over the limit."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 626
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-wide v0
.end method

.method public readUnsignedLongToLong()J
    .locals 5

    .line 430
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 431
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 434
    return-wide v0

    .line 432
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUnsignedShort()I
    .locals 4

    .line 272
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUtf8EncodedLong()J
    .locals 10

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "length":I
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    .line 580
    .local v1, "value":J
    const/4 v3, 0x7

    .local v3, "j":I
    :goto_0
    const/4 v4, 0x6

    if-ltz v3, :cond_2

    .line 581
    const/4 v5, 0x1

    shl-int v6, v5, v3

    int-to-long v6, v6

    and-long/2addr v6, v1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 582
    if-ge v3, v4, :cond_0

    .line 583
    shl-int v6, v5, v3

    sub-int/2addr v6, v5

    int-to-long v5, v6

    and-long/2addr v1, v5

    .line 584
    rsub-int/lit8 v0, v3, 0x7

    goto :goto_1

    .line 585
    :cond_0
    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 586
    const/4 v0, 0x1

    goto :goto_1

    .line 580
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 591
    .end local v3    # "j":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 594
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 595
    iget-object v5, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    .line 596
    .local v5, "x":I
    and-int/lit16 v6, v5, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    .line 599
    shl-long v6, v1, v4

    and-int/lit8 v8, v5, 0x3f

    int-to-long v8, v8

    or-long v1, v6, v8

    .line 594
    .end local v5    # "x":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 597
    .restart local v5    # "x":I
    :cond_3
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 601
    .end local v3    # "i":I
    .end local v5    # "x":I
    :cond_4
    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 602
    return-wide v1

    .line 592
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readUtfCharsetFromBom()Ljava/nio/charset/Charset;
    .locals 5

    .line 646
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    const/16 v3, -0x11

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v0, v3

    const/16 v3, -0x45

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, v1

    aget-byte v0, v0, v3

    const/16 v3, -0x41

    if-ne v0, v3, :cond_0

    .line 650
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 651
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 652
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 653
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v4, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_1

    .line 654
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 655
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 656
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v4, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_2

    .line 657
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 658
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 661
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 95
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 96
    return-void
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 105
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 106
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 115
    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 116
    iput p2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 118
    return-void
.end method

.method public setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 151
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 152
    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 153
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 169
    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 170
    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 171
    return-void
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 198
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 199
    return-void
.end method
