.class final Landroidx/media3/extractor/avi/ChunkReader;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# static fields
.field private static final CHUNK_TYPE_AUDIO:I = 0x62770000

.field private static final CHUNK_TYPE_VIDEO_COMPRESSED:I = 0x63640000

.field private static final CHUNK_TYPE_VIDEO_UNCOMPRESSED:I = 0x62640000

.field private static final INITIAL_INDEX_SIZE:I = 0x200


# instance fields
.field private final alternativeChunkId:I

.field private bytesRemainingInCurrentChunk:I

.field private final chunkId:I

.field private currentChunkIndex:I

.field private currentChunkSize:I

.field private final durationUs:J

.field private firstIndexChunkOffset:J

.field private indexChunkCount:I

.field private indexSize:I

.field private keyFrameIndices:[I

.field private keyFrameOffsets:[J

.field private final streamHeaderChunkCount:I

.field protected final trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(IIJILandroidx/media3/extractor/TrackOutput;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "trackType"    # I
    .param p3, "durationUs"    # J
    .param p5, "streamHeaderChunkCount"    # I
    .param p6, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 84
    iput-wide p3, p0, Landroidx/media3/extractor/avi/ChunkReader;->durationUs:J

    .line 85
    iput p5, p0, Landroidx/media3/extractor/avi/ChunkReader;->streamHeaderChunkCount:I

    .line 86
    iput-object p6, p0, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 89
    if-ne p2, v0, :cond_2

    const/high16 v1, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 v1, 0x62770000

    .line 90
    .local v1, "chunkType":I
    :goto_1
    invoke-static {p1, v1}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    .line 91
    nop

    .line 92
    if-ne p2, v0, :cond_3

    const/high16 v0, 0x62640000

    invoke-static {p1, v0}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    .line 93
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    .line 94
    const/16 v0, 0x200

    new-array v2, v0, [J

    iput-object v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 95
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 96
    return-void
.end method

.method private static getChunkIdFourCc(II)I
    .locals 4
    .param p0, "streamId"    # I
    .param p1, "chunkType"    # I

    .line 218
    div-int/lit8 v0, p0, 0xa

    .line 219
    .local v0, "tens":I
    rem-int/lit8 v1, p0, 0xa

    .line 220
    .local v1, "ones":I
    add-int/lit8 v2, v1, 0x30

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x30

    or-int/2addr v2, v3

    or-int/2addr v2, p1

    return v2
.end method

.method private getChunkTimestampUs(I)J
    .locals 4
    .param p1, "chunkIndex"    # I

    .line 209
    iget-wide v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->streamHeaderChunkCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;
    .locals 6
    .param p1, "keyFrameIndex"    # I

    .line 213
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, p1

    int-to-long v1, v1

    .line 214
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v3

    mul-long/2addr v1, v3

    iget-object v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 213
    return-object v0
.end method


# virtual methods
.method public advanceCurrentChunk()V
    .locals 1

    .line 115
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    .line 116
    return-void
.end method

.method public appendIndexChunk(JZ)V
    .locals 4
    .param p1, "offset"    # J
    .param p3, "isKeyFrame"    # Z

    .line 99
    iget-wide v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    iput-wide p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    .line 102
    :cond_0
    if-eqz p3, :cond_2

    .line 103
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 105
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 107
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    aput-wide p1, v0, v1

    .line 108
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    iget v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    aput v2, v0, v1

    .line 109
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    .line 111
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    .line 112
    return-void
.end method

.method public compactIndex()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 128
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 129
    return-void
.end method

.method public getCurrentChunkTimestampUs()J
    .locals 2

    .line 119
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-direct {p0, v0}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameDurationUs()J
    .locals 2

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 6
    .param p1, "timeUs"    # J

    .line 187
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v0

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 193
    .local v0, "targetFrameIndex":I
    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 194
    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v1

    .line 196
    .local v1, "keyFrameIndex":I
    iget-object v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_1

    .line 197
    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v2

    .line 200
    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object v2

    .line 201
    .local v2, "precedingKeyFrameSeekPoint":Landroidx/media3/extractor/SeekPoint;
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 202
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v3

    .line 204
    :cond_2
    new-instance v3, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v3
.end method

.method public handlesChunkId(I)Z
    .locals 1
    .param p1, "chunkId"    # I

    .line 132
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAudio()Z
    .locals 2

    .line 144
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x62770000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentFrameAKeyFrame()Z
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideo()Z
    .locals 2

    .line 140
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x63640000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChunkData(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 159
    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 160
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v0, v3

    .line 161
    .local v0, "done":Z
    if-eqz v0, :cond_2

    .line 162
    iget v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    if-lez v1, :cond_1

    .line 163
    iget-object v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 164
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->getCurrentChunkTimestampUs()J

    move-result-wide v3

    .line 165
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->isCurrentFrameAKeyFrame()Z

    move-result v5

    iget v6, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    .line 163
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 170
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/extractor/avi/ChunkReader;->advanceCurrentChunk()V

    .line 172
    :cond_2
    return v0
.end method

.method public onChunkStart(I)V
    .locals 0
    .param p1, "size"    # I

    .line 149
    iput p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    .line 150
    iput p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 151
    return-void
.end method

.method public seekToPosition(J)V
    .locals 2
    .param p1, "position"    # J

    .line 176
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 180
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 182
    .local v0, "index":I
    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    .line 184
    .end local v0    # "index":I
    :goto_0
    return-void
.end method
