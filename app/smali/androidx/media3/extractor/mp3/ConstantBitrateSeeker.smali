.class final Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media3/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field private final allowSeeksIfLengthUnknown:Z

.field private final bitrate:I

.field private final dataEndPosition:J

.field private final firstFramePosition:J

.field private final frameSize:I


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 3
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I
    .param p7, "allowSeeksIfLengthUnknown"    # Z

    .line 65
    invoke-direct/range {p0 .. p7}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    .line 66
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    .line 67
    iput p5, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    .line 68
    iput p6, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    .line 69
    iput-boolean p7, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    .line 70
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    move-wide v0, p1

    :cond_0
    iput-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    .line 71
    return-void
.end method

.method public constructor <init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V
    .locals 8
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "mpegAudioHeader"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p6, "allowSeeksIfLengthUnknown"    # Z

    .line 50
    iget v5, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iget v6, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    .line 56
    return-void
.end method


# virtual methods
.method public copyWithNewDataEndPosition(J)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
    .locals 9
    .param p1, "dataEndPosition"    # J

    .line 89
    new-instance v8, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v3, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iget v5, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    iget v6, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    iget-boolean v7, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    move-object v0, v8

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    return-object v8
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 85
    iget v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 80
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 2
    .param p1, "position"    # J

    .line 75
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->getTimeUsAtPosition(J)J

    move-result-wide v0

    return-wide v0
.end method
