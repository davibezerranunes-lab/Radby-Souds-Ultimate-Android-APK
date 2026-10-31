.class final Landroidx/media3/extractor/mp3/XingFrame;
.super Ljava/lang/Object;
.source "XingFrame.java"


# instance fields
.field public final dataSize:J

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameCount:J

.field public final header:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final tableOfContents:[J


# direct methods
.method private constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JII)V
    .locals 1
    .param p1, "header"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p2, "frameCount"    # J
    .param p4, "dataSize"    # J
    .param p6, "tableOfContents"    # [J
    .param p7, "encoderDelay"    # I
    .param p8, "encoderPadding"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0, p1}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 64
    iput-wide p2, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    .line 65
    iput-wide p4, p0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    .line 66
    iput-object p6, p0, Landroidx/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    .line 67
    iput p7, p0, Landroidx/media3/extractor/mp3/XingFrame;->encoderDelay:I

    .line 68
    iput p8, p0, Landroidx/media3/extractor/mp3/XingFrame;->encoderPadding:I

    .line 69
    return-void
.end method

.method public static parse(Landroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/XingFrame;
    .locals 17
    .param p0, "mpegAudioHeader"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p1, "frame"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 83
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 84
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 85
    .local v2, "frameCount":I
    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, -0x1

    :goto_1
    move-wide v9, v3

    .line 88
    .local v9, "dataSize":J
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 89
    const/16 v3, 0x64

    new-array v5, v3, [J

    .line 90
    .local v5, "tableOfContents":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v5, v6

    .line 90
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object v3, v5

    .end local v6    # "i":I
    goto :goto_3

    .line 94
    .end local v5    # "tableOfContents":[J
    :cond_3
    const/4 v5, 0x0

    move-object v3, v5

    .line 97
    .local v3, "tableOfContents":[J
    :goto_3
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_4

    .line 98
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 105
    :cond_4
    const/16 v4, 0x15

    .line 106
    .local v4, "bytesToSkipBeforeEncoderDelayAndPadding":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    add-int/lit8 v6, v4, 0x3

    if-lt v5, v6, :cond_5

    .line 107
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 109
    .local v5, "encoderDelayAndPadding":I
    const v6, 0xfff000

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0xc

    .line 110
    .local v6, "encoderDelay":I
    and-int/lit16 v5, v5, 0xfff

    .line 111
    .local v5, "encoderPadding":I
    move v14, v5

    move v15, v6

    goto :goto_4

    .line 112
    .end local v5    # "encoderPadding":I
    .end local v6    # "encoderDelay":I
    :cond_5
    const/4 v6, -0x1

    .line 113
    .restart local v6    # "encoderDelay":I
    const/4 v5, -0x1

    move v14, v5

    move v15, v6

    .line 116
    .end local v6    # "encoderDelay":I
    .local v14, "encoderPadding":I
    .local v15, "encoderDelay":I
    :goto_4
    new-instance v16, Landroidx/media3/extractor/mp3/XingFrame;

    int-to-long v7, v2

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-object v11, v3

    move v12, v15

    move v13, v14

    invoke-direct/range {v5 .. v13}, Landroidx/media3/extractor/mp3/XingFrame;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JII)V

    return-object v16
.end method


# virtual methods
.method public computeDurationUs()J
    .locals 4

    .line 126
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    iget-object v2, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0

    .line 128
    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
