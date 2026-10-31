.class final Landroidx/media3/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJI)V
    .locals 0
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J
    .param p5, "dataEndPosition"    # J
    .param p7, "bitrate"    # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 120
    iput-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 121
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    .line 122
    iput-wide p5, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 123
    iput p7, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    .line 124
    return-void
.end method

.method public static create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;
    .locals 28
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p5, "frame"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 54
    .local v4, "bytes":I
    iget v5, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v5, v5

    add-long v5, p2, v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 55
    .local v5, "endOfMp3Data":J
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 56
    .local v7, "numFrames":I
    const/4 v8, 0x0

    if-gtz v7, :cond_0

    .line 57
    return-object v8

    .line 59
    :cond_0
    iget v9, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 60
    .local v9, "sampleRate":I
    int-to-long v10, v7

    .line 62
    const/16 v12, 0x7d00

    if-lt v9, v12, :cond_1

    const/16 v12, 0x480

    goto :goto_0

    :cond_1
    const/16 v12, 0x240

    :goto_0
    int-to-long v12, v12

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    int-to-long v14, v9

    .line 61
    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 63
    .local v10, "durationUs":J
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 64
    .local v12, "entryCount":I
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    .line 65
    .local v13, "scale":I
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 66
    .local v14, "entrySize":I
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 68
    iget v15, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    move/from16 v24, v9

    .end local v9    # "sampleRate":I
    .local v24, "sampleRate":I
    int-to-long v8, v15

    add-long v8, p2, v8

    .line 70
    .end local p2    # "position":J
    .local v8, "position":J
    new-array v15, v12, [J

    .line 71
    .local v15, "timesUs":[J
    new-array v3, v12, [J

    .line 72
    .local v3, "positions":[J
    const/16 v17, 0x0

    move/from16 v25, v4

    move/from16 v4, v17

    .local v4, "index":I
    .local v25, "bytes":I
    :goto_1
    if-ge v4, v12, :cond_2

    .line 73
    move-wide/from16 v17, v5

    .end local v5    # "endOfMp3Data":J
    .local v17, "endOfMp3Data":J
    int-to-long v5, v4

    mul-long/2addr v5, v10

    move-wide/from16 v26, v10

    .end local v10    # "durationUs":J
    .local v26, "durationUs":J
    int-to-long v10, v12

    div-long/2addr v5, v10

    aput-wide v5, v15, v4

    .line 74
    aput-wide v8, v3, v4

    .line 76
    packed-switch v14, :pswitch_data_0

    .line 90
    const/4 v5, 0x0

    return-object v5

    .line 87
    :pswitch_0
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 88
    .local v5, "segmentSize":I
    goto :goto_2

    .line 84
    .end local v5    # "segmentSize":I
    :pswitch_1
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 85
    .restart local v5    # "segmentSize":I
    goto :goto_2

    .line 81
    .end local v5    # "segmentSize":I
    :pswitch_2
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 82
    .restart local v5    # "segmentSize":I
    goto :goto_2

    .line 78
    .end local v5    # "segmentSize":I
    :pswitch_3
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 79
    .restart local v5    # "segmentSize":I
    nop

    .line 92
    :goto_2
    int-to-long v10, v5

    move/from16 v19, v5

    .end local v5    # "segmentSize":I
    .local v19, "segmentSize":I
    int-to-long v5, v13

    mul-long/2addr v10, v5

    add-long/2addr v8, v10

    .line 72
    .end local v19    # "segmentSize":I
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v5, v17

    move-wide/from16 v10, v26

    goto :goto_1

    .end local v17    # "endOfMp3Data":J
    .end local v26    # "durationUs":J
    .local v5, "endOfMp3Data":J
    .restart local v10    # "durationUs":J
    :cond_2
    move-wide/from16 v17, v5

    move-wide/from16 v26, v10

    .line 94
    .end local v4    # "index":I
    .end local v5    # "endOfMp3Data":J
    .end local v10    # "durationUs":J
    .restart local v17    # "endOfMp3Data":J
    .restart local v26    # "durationUs":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    const-string v5, ", "

    const-string v6, "VbriSeeker"

    if-eqz v4, :cond_3

    cmp-long v4, v0, v17

    if-eqz v4, :cond_3

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VBRI data size mismatch: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v10, v17

    .end local v17    # "endOfMp3Data":J
    .local v10, "endOfMp3Data":J
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 94
    .end local v10    # "endOfMp3Data":J
    .restart local v17    # "endOfMp3Data":J
    :cond_3
    move-wide/from16 v10, v17

    .line 97
    .end local v17    # "endOfMp3Data":J
    .restart local v10    # "endOfMp3Data":J
    :goto_3
    cmp-long v4, v10, v8

    if-eqz v4, :cond_4

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VBRI bytes and ToC mismatch (using max): "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSeeking will be inaccurate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .end local v10    # "endOfMp3Data":J
    .restart local v5    # "endOfMp3Data":J
    goto :goto_4

    .line 97
    .end local v5    # "endOfMp3Data":J
    .restart local v10    # "endOfMp3Data":J
    :cond_4
    move-wide v5, v10

    .line 108
    .end local v10    # "endOfMp3Data":J
    .restart local v5    # "endOfMp3Data":J
    :goto_4
    new-instance v0, Landroidx/media3/extractor/mp3/VbriSeeker;

    iget v1, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v18, v3

    move-wide/from16 v19, v26

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-direct/range {v16 .. v23}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJI)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 160
    iget v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 155
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 150
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8
    .param p1, "timeUs"    # J

    .line 133
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 134
    .local v0, "tableIndex":I
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 135
    .local v2, "seekPoint":Landroidx/media3/extractor/SeekPoint;
    iget-wide v3, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 139
    .local v1, "nextSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v3

    .line 136
    .end local v1    # "nextSeekPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_1
    :goto_0
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .line 145
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 128
    const/4 v0, 0x1

    return v0
.end method
