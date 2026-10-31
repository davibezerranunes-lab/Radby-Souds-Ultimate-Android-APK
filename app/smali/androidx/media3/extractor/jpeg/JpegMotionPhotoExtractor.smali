.class final Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "JpegMotionPhotoExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field private static final EXIF_HEADER:J = 0x45786966L

.field private static final EXIF_ID_CODE_LENGTH:I = 0x6

.field private static final HEADER_XMP_APP1:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final MARKER_APP0:I = 0xffe0

.field private static final MARKER_APP1:I = 0xffe1

.field private static final MARKER_SOI:I = 0xffd8

.field private static final MARKER_SOS:I = 0xffda

.field private static final STATE_ENDED:I = 0x6

.field private static final STATE_READING_MARKER:I = 0x0

.field private static final STATE_READING_MOTION_PHOTO_VIDEO:I = 0x5

.field private static final STATE_READING_SEGMENT:I = 0x2

.field private static final STATE_READING_SEGMENT_LENGTH:I = 0x1

.field private static final STATE_SNIFFING_MOTION_PHOTO_VIDEO:I = 0x4


# instance fields
.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private marker:I

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field private mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

.field private mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

.field private mp4StartPosition:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private segmentLength:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    .line 95
    return-void
.end method

.method private advancePeekPositionToNextSegment(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 190
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 191
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v1

    .line 192
    .local v0, "segmentLength":I
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 193
    return-void
.end method

.method private endReading()V
    .locals 4

    .line 269
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 270
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 271
    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    .line 272
    return-void
.end method

.method private static getMotionPhotoMetadata(Ljava/lang/String;J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .locals 2
    .param p0, "xmpString"    # Ljava/lang/String;
    .param p1, "inputLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 302
    return-object v1

    .line 307
    :cond_0
    nop

    .line 308
    invoke-static {p0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parse(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    move-result-object v0

    .line 309
    .local v0, "motionPhotoDescription":Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
    if-nez v0, :cond_1

    .line 310
    return-object v1

    .line 312
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->getMotionPhotoMetadata(J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    move-result-object v1

    return-object v1
.end method

.method private outputImageTrack(Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;)V
    .locals 5
    .param p1, "motionPhotoMetadata"    # Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 275
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 276
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 277
    .local v0, "imageTrackOutput":Landroidx/media3/extractor/TrackOutput;
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 279
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 280
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 277
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 282
    return-void
.end method

.method private peekMarker(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 184
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 185
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method private readMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 197
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 198
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    .line 199
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffda

    if-ne v0, v1, :cond_1

    .line 200
    iget-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    goto :goto_0

    .line 205
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffd0

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffd9

    if-le v0, v1, :cond_3

    :cond_2
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xff01

    if-eq v0, v1, :cond_3

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    .line 208
    :cond_3
    :goto_0
    return-void
.end method

.method private readSegment(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffe1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 219
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 220
    .local v0, "payload":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-interface {p1, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 221
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "xmpString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->getMotionPhotoMetadata(Ljava/lang/String;J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 226
    iget-object v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget-wide v3, v3, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    .line 231
    .end local v0    # "payload":Landroidx/media3/common/util/ParsableByteArray;
    .end local v1    # "xmpString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 234
    :goto_0
    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    .line 235
    return-void
.end method

.method private readSegmentLength(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 212
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 213
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    .line 214
    iput v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    .line 215
    return-void
.end method

.method private sniffMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 241
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 240
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    .line 242
    .local v0, "peekedData":Z
    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 246
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    iput-object v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 251
    :cond_1
    new-instance v1, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v1, p1, v2, v3}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 253
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    new-instance v2, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    iget-object v5, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 255
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/ExtractorOutput;

    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    .line 254
    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 256
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->startReadingMotionPhoto()V

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    .line 261
    :goto_0
    return-void
.end method

.method private startReadingMotionPhoto()V
    .locals 1

    .line 264
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->outputImageTrack(Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;)V

    .line 265
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    .line 266
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 122
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 123
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 161
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 159
    :pswitch_1
    const/4 v0, -0x1

    return v0

    .line 146
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eq p1, v0, :cond_1

    .line 147
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 148
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v2, v3}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 152
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 153
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {v0, v2, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    .line 154
    .local v0, "readResult":I
    if-ne v0, v1, :cond_2

    .line 155
    iget-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-wide v3, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 157
    :cond_2
    return v0

    .line 139
    .end local v0    # "readResult":I
    :pswitch_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 140
    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    iput-wide v2, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 141
    return v1

    .line 143
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->sniffMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;)V

    .line 144
    return v2

    .line 136
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->readSegment(Landroidx/media3/extractor/ExtractorInput;)V

    .line 137
    return v2

    .line 133
    :pswitch_5
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->readSegmentLength(Landroidx/media3/extractor/ExtractorInput;)V

    .line 134
    return v2

    .line 130
    :pswitch_6
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->readMarker(Landroidx/media3/extractor/ExtractorInput;)V

    .line 131
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    .line 180
    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    goto :goto_0

    .line 170
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->peekMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 101
    return v2

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->peekMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    .line 107
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffe0

    if-ne v0, v1, :cond_1

    .line 108
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->advancePeekPositionToNextSegment(Landroidx/media3/extractor/ExtractorInput;)V

    .line 109
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->peekMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    .line 111
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffe1

    if-eq v0, v1, :cond_2

    .line 112
    return v2

    .line 114
    :cond_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 115
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 116
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
