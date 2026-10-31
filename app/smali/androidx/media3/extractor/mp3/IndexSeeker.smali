.class final Landroidx/media3/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field static final MIN_TIME_BETWEEN_POINTS_US:J = 0x186a0L


# instance fields
.field private final averageBitrate:I

.field private final dataEndPosition:J

.field private final indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 15
    .param p1, "durationUs"    # J
    .param p3, "dataStartPosition"    # J
    .param p5, "dataEndPosition"    # J

    .line 34
    move-object v0, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Landroidx/media3/extractor/IndexSeekMap;

    const/4 v2, 0x1

    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide p3, v3, v4

    new-array v2, v2, [J

    const-wide/16 v12, 0x0

    aput-wide v12, v2, v4

    invoke-direct {v1, v3, v2, v8, v9}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    iput-object v1, v0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    .line 40
    iput-wide v10, v0, Landroidx/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 41
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v1

    const v14, -0x7fffffff

    if-eqz v1, :cond_1

    .line 42
    sub-long v1, p3, v10

    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 43
    const-wide/16 v3, 0x8

    move-wide/from16 v5, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 45
    .local v1, "bitrate":J
    nop

    .line 46
    cmp-long v3, v1, v12

    if-lez v3, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    long-to-int v14, v1

    :cond_0
    iput v14, v0, Landroidx/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    .line 47
    .end local v1    # "bitrate":J
    goto :goto_0

    .line 48
    :cond_1
    iput v14, v0, Landroidx/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    .line 50
    :goto_0
    return-void
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 79
    iget v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 59
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 69
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0}, Landroidx/media3/extractor/IndexSeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 1
    .param p1, "timeUs"    # J

    .line 74
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/IndexSeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(J)J
    .locals 2
    .param p1, "position"    # J

    .line 54
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/IndexSeekMap;->getTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0}, Landroidx/media3/extractor/IndexSeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method

.method public isTimeUsInIndex(J)Z
    .locals 3
    .param p1, "timeUs"    # J

    .line 107
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media3/extractor/IndexSeekMap;->isTimeUsInIndex(JJ)Z

    move-result v0

    return v0
.end method

.method public maybeAddSeekPoint(JJ)V
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "position"    # J

    .line 91
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/IndexSeekMap;->addSeekPoint(JJ)V

    .line 95
    return-void
.end method

.method setDurationUs(J)V
    .locals 1
    .param p1, "durationUs"    # J

    .line 111
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/IndexSeekMap;->setDurationUs(J)V

    .line 112
    return-void
.end method
