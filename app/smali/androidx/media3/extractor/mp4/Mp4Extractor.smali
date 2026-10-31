.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x10

.field public static final FLAG_MARK_FIRST_VIDEO_TRACK_WITH_MAIN_ROLE:I = 0x8

.field public static final FLAG_READ_EDITABLE_VIDEO_TRACKS:I = 0x40

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES:I = 0x20

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Landroidx/media3/common/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private edvdAtomOffset:J

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private isSampleDependedOn:Z

.field private lastSniffFailures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation
.end field

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field private final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private parserState:I

.field private readingEditableVideoTracks:Z

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleOffsetForEditableVideoTracks:J

.field private sampleTrackIndex:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seekToEdvdAtom:Z

.field private seenFtypAtom:Z

.field private final sefReader:Landroidx/media3/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 273
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 3
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p2, "flags"    # I

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 303
    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    .line 304
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    .line 305
    nop

    .line 306
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 307
    new-instance v0, Landroidx/media3/extractor/mp4/SefReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 309
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 310
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 311
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 312
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 313
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 315
    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 316
    new-array v0, v1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 318
    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 319
    return-void
.end method

.method private static brandToFileType(I)I
    .locals 1
    .param p0, "brand"    # I

    .line 1183
    sparse-switch p0, :sswitch_data_0

    .line 1189
    const/4 v0, 0x0

    return v0

    .line 1185
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1187
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x68656963 -> :sswitch_1
        0x71742020 -> :sswitch_0
    .end sparse-switch
.end method

.method private static calculateAccumulatedSampleSizes([Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .locals 14
    .param p0, "tracks"    # [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 1086
    array-length v0, p0

    new-array v0, v0, [[J

    .line 1087
    .local v0, "accumulatedSampleSizes":[[J
    array-length v1, p0

    new-array v1, v1, [I

    .line 1088
    .local v1, "nextSampleIndex":[I
    array-length v2, p0

    new-array v2, v2, [J

    .line 1089
    .local v2, "nextSampleTimesUs":[J
    array-length v3, p0

    new-array v3, v3, [Z

    .line 1090
    .local v3, "tracksFinished":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 1091
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v5, v5, [J

    aput-object v5, v0, v4

    .line 1092
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v2, v4

    .line 1090
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1094
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v4, 0x0

    .line 1095
    .local v4, "accumulatedSampleSize":J
    const/4 v6, 0x0

    .line 1096
    .local v6, "finishedTracks":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_4

    .line 1097
    const-wide v7, 0x7fffffffffffffffL

    .line 1098
    .local v7, "minTimeUs":J
    const/4 v9, -0x1

    .line 1099
    .local v9, "minTimeTrackIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, p0

    if-ge v10, v11, :cond_2

    .line 1100
    aget-boolean v11, v3, v10

    if-nez v11, :cond_1

    aget-wide v11, v2, v10

    cmp-long v11, v11, v7

    if-gtz v11, :cond_1

    .line 1101
    move v9, v10

    .line 1102
    aget-wide v7, v2, v10

    .line 1099
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1105
    .end local v10    # "i":I
    :cond_2
    aget v10, v1, v9

    .line 1106
    .local v10, "trackSampleIndex":I
    aget-object v11, v0, v9

    aput-wide v4, v11, v10

    .line 1107
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v11, v11, v10

    int-to-long v11, v11

    add-long/2addr v4, v11

    .line 1108
    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 1109
    aget-object v12, v0, v9

    array-length v12, v12

    if-ge v10, v12, :cond_3

    .line 1110
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v11, v10

    aput-wide v12, v2, v9

    goto :goto_3

    .line 1113
    :cond_3
    aput-boolean v11, v3, v9

    .line 1114
    add-int/lit8 v6, v6, 0x1

    .line 1116
    .end local v7    # "minTimeUs":J
    .end local v9    # "minTimeTrackIndex":I
    .end local v10    # "trackSampleIndex":I
    :goto_3
    goto :goto_1

    .line 1117
    :cond_4
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 504
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 505
    return-void
.end method

.method private getAuxiliaryTrackTypesForEditableVideoTracks(Landroidx/media3/common/Metadata;)Ljava/util/List;
    .locals 6
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Metadata;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 815
    nop

    .line 817
    const-string v0, "editable.tracks.map"

    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v0

    .line 816
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 818
    .local v0, "trackTypesMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    invoke-virtual {v0}, Landroidx/media3/container/MdtaMetadataEntry;->getEditableTrackTypesFromMap()Ljava/util/List;

    move-result-object v1

    .line 819
    .local v1, "editableVideoTrackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    .line 820
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 821
    .local v2, "auxiliaryTrackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 823
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 837
    const/4 v4, 0x0

    .local v4, "auxiliaryTrackType":I
    goto :goto_1

    .line 834
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_0
    const/4 v4, 0x4

    .line 835
    .restart local v4    # "auxiliaryTrackType":I
    goto :goto_1

    .line 831
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_1
    const/4 v4, 0x3

    .line 832
    .restart local v4    # "auxiliaryTrackType":I
    goto :goto_1

    .line 828
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_2
    const/4 v4, 0x2

    .line 829
    .restart local v4    # "auxiliaryTrackType":I
    goto :goto_1

    .line 825
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_3
    const/4 v4, 0x1

    .line 826
    .restart local v4    # "auxiliaryTrackType":I
    nop

    .line 839
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v4    # "auxiliaryTrackType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 841
    .end local v3    # "i":I
    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I
    .locals 2
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "timeUs"    # J

    .line 1151
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    .line 1152
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1154
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    .line 1156
    :cond_0
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .locals 23
    .param p1, "inputPosition"    # J

    .line 997
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 998
    .local v1, "preferredSkipAmount":J
    const/4 v3, 0x1

    .line 999
    .local v3, "preferredRequiresReload":Z
    const/4 v4, -0x1

    .line 1000
    .local v4, "preferredTrackIndex":I
    const-wide v5, 0x7fffffffffffffffL

    .line 1001
    .local v5, "preferredAccumulatedBytes":J
    const-wide v7, 0x7fffffffffffffffL

    .line 1002
    .local v7, "minAccumulatedBytes":J
    const/4 v9, 0x1

    .line 1003
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 1004
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v12, v12

    if-ge v11, v12, :cond_7

    .line 1005
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v12, v12, v11

    .line 1006
    .local v12, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v13, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 1007
    .local v13, "sampleIndex":I
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v14, v14, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v13, v14, :cond_0

    .line 1008
    goto :goto_3

    .line 1010
    :cond_0
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v14, v14, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v15, v14, v13

    .line 1011
    .local v15, "sampleOffset":J
    iget-object v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v14}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[J

    aget-object v14, v14, v11

    aget-wide v17, v14, v13

    .line 1012
    .local v17, "sampleAccumulatedBytes":J
    sub-long v19, v15, p1

    .line 1013
    .local v19, "skipAmount":J
    const-wide/16 v21, 0x0

    cmp-long v14, v19, v21

    if-ltz v14, :cond_2

    const-wide/32 v21, 0x40000

    cmp-long v14, v19, v21

    if-ltz v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    .line 1014
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v14, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-ne v14, v3, :cond_5

    cmp-long v21, v19, v1

    if-gez v21, :cond_5

    .line 1016
    :cond_4
    move v3, v14

    .line 1017
    move-wide/from16 v1, v19

    .line 1018
    move v4, v11

    .line 1019
    move-wide/from16 v5, v17

    .line 1021
    :cond_5
    cmp-long v21, v17, v7

    if-gez v21, :cond_6

    .line 1022
    move-wide/from16 v7, v17

    .line 1023
    move v9, v14

    .line 1024
    move v10, v11

    .line 1004
    .end local v12    # "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v13    # "sampleIndex":I
    .end local v14    # "requiresReload":Z
    .end local v15    # "sampleOffset":J
    .end local v17    # "sampleAccumulatedBytes":J
    .end local v19    # "skipAmount":J
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1029
    .end local v11    # "trackIndex":I
    :cond_7
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v11, v7, v11

    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    const-wide/32 v11, 0xa00000

    add-long/2addr v11, v7

    cmp-long v11, v5, v11

    if-gez v11, :cond_8

    goto :goto_4

    .line 1031
    :cond_8
    move v11, v10

    goto :goto_5

    .line 1030
    :cond_9
    :goto_4
    move v11, v4

    .line 1027
    :goto_5
    return v11
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 3
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$processMoovAtom$2(Landroidx/media3/extractor/mp4/Track;)Landroidx/media3/extractor/mp4/Track;
    .locals 0
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;

    .line 698
    return-object p0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J
    .locals 6
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "seekTimeUs"    # J
    .param p3, "offset"    # J

    .line 1131
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v0

    .line 1132
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1133
    return-wide p3

    .line 1135
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v1, v0

    .line 1136
    .local v2, "sampleOffset":J
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private maybeSetDefaultSampleOffsetForEditableVideoTracks(Landroidx/media3/common/Metadata;)V
    .locals 5
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 803
    nop

    .line 804
    const-string v0, "editable.tracks.samples.location"

    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v0

    .line 806
    .local v0, "sampleLocationMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    if-eqz v0, :cond_0

    .line 807
    iget-object v1, v0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_0

    .line 808
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->edvdAtomOffset:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForEditableVideoTracks:J

    .line 811
    :cond_0
    return-void
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1060
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 1061
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1062
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1063
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1064
    return-void
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 92
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private processAtomEnded(J)V
    .locals 4
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 630
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 632
    .local v0, "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_0

    .line 634
    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processMoovAtom(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    .line 635
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 636
    iget-boolean v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToEdvdAtom:Z

    if-nez v2, :cond_1

    .line 637
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    .line 639
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v1, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    .line 642
    .end local v0    # "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_1
    :goto_1
    goto :goto_0

    .line 643
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v0, v1, :cond_3

    .line 644
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 646
    :cond_3
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .locals 6

    .line 1047
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 1051
    .local v0, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 1052
    .local v1, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 1053
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 1054
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 1056
    .end local v0    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v1    # "metadata":Landroidx/media3/common/Metadata;
    :cond_1
    return-void
.end method

.method private static processFtypAtom(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3
    .param p0, "atomData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1166
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1167
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1168
    .local v0, "majorBrand":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 1169
    .local v1, "fileType":I
    if-eqz v1, :cond_0

    .line 1170
    return v1

    .line 1172
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1173
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 1174
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 1175
    if-eqz v1, :cond_1

    .line 1176
    return v1

    .line 1179
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private processMoovAtom(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 30
    .param p1, "moov"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v1, 0x0

    .line 656
    .local v1, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const v2, 0x6d657461

    invoke-virtual {v9, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v10

    .line 657
    .local v10, "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, "auxiliaryTrackTypesForEditableVideoTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x1

    if-eqz v10, :cond_2

    .line 660
    invoke-static {v10}, Landroidx/media3/extractor/mp4/BoxParser;->parseMdtaFromMeta(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 661
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingEditableVideoTracks:Z

    if-eqz v3, :cond_0

    .line 662
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeSetDefaultSampleOffsetForEditableVideoTracks(Landroidx/media3/common/Metadata;)V

    .line 664
    nop

    .line 665
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getAuxiliaryTrackTypesForEditableVideoTracks(Landroidx/media3/common/Metadata;)Ljava/util/List;

    move-result-object v2

    move-object v12, v1

    move-object v13, v2

    goto :goto_0

    .line 666
    :cond_0
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldSeekToEdvdAtom(Landroidx/media3/common/Metadata;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    iput-boolean v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToEdvdAtom:Z

    .line 668
    return-void

    .line 666
    :cond_1
    move-object v12, v1

    move-object v13, v2

    goto :goto_0

    .line 659
    :cond_2
    move-object v12, v1

    move-object v13, v2

    .line 671
    .end local v1    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .end local v2    # "auxiliaryTrackTypesForEditableVideoTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v13, "auxiliaryTrackTypesForEditableVideoTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    const/4 v14, -0x1

    .line 672
    .local v14, "firstVideoTrackIndex":I
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 673
    .local v15, "durationUs":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 676
    .local v8, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v5, 0x0

    if-ne v1, v11, :cond_3

    move v7, v11

    goto :goto_1

    :cond_3
    move v7, v5

    .line 677
    .local v7, "isQuickTime":Z
    :goto_1
    new-instance v1, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v1}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    move-object v3, v1

    .line 678
    .local v3, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    const/4 v1, 0x0

    .line 679
    .local v1, "udtaMetadata":Landroidx/media3/common/Metadata;
    const v2, 0x75647461

    invoke-virtual {v9, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v17

    .line 680
    .local v17, "udta":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v17, :cond_4

    .line 681
    invoke-static/range {v17 .. v17}, Landroidx/media3/extractor/mp4/BoxParser;->parseUdta(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 682
    invoke-virtual {v3, v1}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    move-object/from16 v18, v1

    goto :goto_2

    .line 680
    :cond_4
    move-object/from16 v18, v1

    .line 685
    .end local v1    # "udtaMetadata":Landroidx/media3/common/Metadata;
    .local v18, "udtaMetadata":Landroidx/media3/common/Metadata;
    :goto_2
    new-instance v1, Landroidx/media3/common/Metadata;

    new-array v2, v11, [Landroidx/media3/common/Metadata$Entry;

    .line 687
    const v4, 0x6d766864

    invoke-virtual {v9, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object/from16 v19, v1

    .line 689
    .local v19, "mvhdMetadata":Landroidx/media3/common/Metadata;
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    move v6, v5

    .line 690
    .local v6, "ignoreEditLists":Z
    :goto_3
    new-instance v20, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct/range {v20 .. v20}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    .line 691
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v23, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v11, v3

    .end local v3    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v11, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    move-wide/from16 v3, v21

    move-object/from16 v5, v23

    move-object/from16 v21, v8

    .end local v8    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v21, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    move-object/from16 v8, v20

    invoke-static/range {v1 .. v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 700
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingEditableVideoTracks:Z

    if-eqz v2, :cond_7

    .line 701
    nop

    .line 702
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 707
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 708
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 703
    const-string v4, "The number of auxiliary track types from metadata (%d) is not same as the number of editable video tracks (%d)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-static {v5, v2}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 710
    :cond_7
    const/4 v2, 0x0

    .line 711
    .local v2, "trackIndex":I
    const/4 v3, 0x0

    move-wide v4, v15

    .end local v15    # "durationUs":J
    .local v3, "i":I
    .local v4, "durationUs":J
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_12

    .line 712
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 713
    .local v8, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    iget v15, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v15, :cond_8

    .line 714
    move-object/from16 v22, v1

    move/from16 v20, v6

    move/from16 v16, v7

    move-object/from16 v8, v21

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_c

    .line 716
    :cond_8
    iget-object v15, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 718
    .local v15, "track":Landroidx/media3/extractor/mp4/Track;
    move/from16 v20, v6

    move/from16 v16, v7

    .end local v6    # "ignoreEditLists":Z
    .end local v7    # "isQuickTime":Z
    .local v16, "isQuickTime":Z
    .local v20, "ignoreEditLists":Z
    iget-wide v6, v15, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v22

    if-eqz v6, :cond_9

    iget-wide v6, v15, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    goto :goto_6

    :cond_9
    iget-wide v6, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 719
    .local v6, "trackDurationUs":J
    :goto_6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 720
    move-object/from16 v22, v1

    .end local v1    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v22, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move-wide/from16 v24, v4

    .end local v4    # "durationUs":J
    .local v24, "durationUs":J
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v5, v2, 0x1

    move/from16 v23, v5

    .end local v2    # "trackIndex":I
    .local v23, "trackIndex":I
    iget v5, v15, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 721
    invoke-interface {v4, v2, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v1, v15, v8, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    .line 724
    .local v1, "mp4Track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v2, v15, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/true-hd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 726
    iget v2, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v2, v2, 0x10

    .local v2, "maxInputSize":I
    goto :goto_7

    .line 730
    .end local v2    # "maxInputSize":I
    :cond_a
    iget v2, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v2, v2, 0x1e

    .line 733
    .restart local v2    # "maxInputSize":I
    :goto_7
    iget-object v4, v15, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 734
    .local v4, "formatBuilder":Landroidx/media3/common/Format$Builder;
    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 735
    iget v5, v15, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v26, v2

    .end local v2    # "maxInputSize":I
    .local v26, "maxInputSize":I
    const/4 v2, 0x2

    if-ne v5, v2, :cond_f

    .line 736
    iget-object v5, v15, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->roleFlags:I

    .line 737
    .local v5, "roleFlags":I
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_c

    .line 738
    nop

    .line 739
    const/4 v2, -0x1

    if-ne v14, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x2

    :goto_8
    or-int/2addr v5, v2

    .line 741
    :cond_c
    iget-object v2, v15, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v27, -0x40800000    # -1.0f

    cmpl-float v2, v2, v27

    if-nez v2, :cond_d

    const-wide/16 v27, 0x0

    cmp-long v2, v6, v27

    if-lez v2, :cond_d

    iget v2, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-lez v2, :cond_d

    .line 744
    iget v2, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v2, v2

    move-object/from16 v27, v8

    .end local v8    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .local v27, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    long-to-float v8, v6

    const v28, 0x49742400    # 1000000.0f

    div-float v8, v8, v28

    div-float/2addr v2, v8

    .line 745
    .local v2, "frameRate":F
    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    goto :goto_9

    .line 741
    .end local v2    # "frameRate":F
    .end local v27    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .restart local v8    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :cond_d
    move-object/from16 v27, v8

    .line 747
    .end local v8    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .restart local v27    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :goto_9
    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingEditableVideoTracks:Z

    if-eqz v2, :cond_e

    .line 748
    const v2, 0x8000

    or-int/2addr v5, v2

    .line 749
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;

    .line 751
    :cond_e
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    goto :goto_a

    .line 735
    .end local v5    # "roleFlags":I
    .end local v27    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .restart local v8    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :cond_f
    move-object/from16 v27, v8

    .line 754
    .end local v8    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .restart local v27    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :goto_a
    iget v2, v15, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-static {v2, v11, v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILandroidx/media3/extractor/GaplessInfoHolder;Landroidx/media3/common/Format$Builder;)V

    .line 755
    iget v2, v15, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/media3/common/Metadata;

    .line 759
    iget-object v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x0

    move-wide/from16 v28, v6

    goto :goto_b

    :cond_10
    new-instance v8, Landroidx/media3/common/Metadata;

    move-wide/from16 v28, v6

    .end local v6    # "trackDurationUs":J
    .local v28, "trackDurationUs":J
    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v8, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_b
    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v7, 0x1

    aput-object v18, v5, v7

    const/4 v8, 0x2

    aput-object v19, v5, v8

    .line 755
    invoke-static {v2, v12, v4, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;[Landroidx/media3/common/Metadata;)V

    .line 762
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-interface {v2, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 764
    iget v2, v15, Landroidx/media3/extractor/mp4/Track;->type:I

    if-ne v2, v8, :cond_11

    const/4 v2, -0x1

    if-ne v14, v2, :cond_11

    .line 765
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v14

    .line 767
    :cond_11
    move-object/from16 v8, v21

    .end local v21    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v8, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v23

    move-wide/from16 v4, v24

    .line 711
    .end local v1    # "mp4Track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v15    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v23    # "trackIndex":I
    .end local v24    # "durationUs":J
    .end local v26    # "maxInputSize":I
    .end local v27    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v28    # "trackDurationUs":J
    .local v2, "trackIndex":I
    .local v4, "durationUs":J
    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v21, v8

    move/from16 v7, v16

    move/from16 v6, v20

    move-object/from16 v1, v22

    goto/16 :goto_5

    .end local v8    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .end local v16    # "isQuickTime":Z
    .end local v20    # "ignoreEditLists":Z
    .end local v22    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v6, "ignoreEditLists":Z
    .restart local v7    # "isQuickTime":Z
    .restart local v21    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    :cond_12
    move-object/from16 v22, v1

    move/from16 v20, v6

    move-object/from16 v8, v21

    const/4 v6, 0x0

    .line 769
    .end local v1    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .end local v3    # "i":I
    .end local v6    # "ignoreEditLists":Z
    .end local v21    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v8    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v20    # "ignoreEditLists":Z
    .restart local v22    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 770
    iput-wide v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 771
    new-array v1, v6, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 772
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 774
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 775
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 776
    return-void
.end method

.method private processUnparsedAtom(J)V
    .locals 13
    .param p1, "atomStartPosition"    # J

    .line 1068
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    .line 1071
    new-instance v0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v1, v1

    add-long v9, p1, v1

    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long v11, v1, v3

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 1079
    :cond_0
    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    .line 512
    return v3

    .line 514
    :cond_0
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 515
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 516
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 517
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    .line 520
    :cond_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 522
    const/16 v0, 0x8

    .line 523
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 524
    iget v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 525
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_0

    .line 526
    :cond_2
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 529
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 530
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 531
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 532
    .local v0, "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    if-eqz v0, :cond_3

    .line 533
    iget-wide v4, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    .line 536
    .end local v0    # "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 537
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_1

    .line 526
    .end local v4    # "endPosition":J
    :cond_4
    :goto_0
    nop

    .line 541
    :cond_5
    :goto_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_c

    .line 546
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 547
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v0, v3

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 548
    .local v0, "endPosition":J
    iget-wide v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v3, v4, :cond_6

    .line 549
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V

    .line 551
    :cond_6
    iget-object v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 552
    iget-wide v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 553
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_2

    .line 556
    :cond_7
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 558
    .end local v0    # "endPosition":J
    :goto_2
    goto :goto_5

    :cond_8
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 561
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v3

    :goto_3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 562
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 563
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v4, v4

    invoke-direct {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 564
    .local v0, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v4, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 566
    iput v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 567
    .end local v0    # "atomData":Landroidx/media3/common/util/ParsableByteArray;
    goto :goto_5

    .line 568
    :cond_b
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 570
    iput v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 573
    :goto_5
    return v2

    .line 542
    :cond_c
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)Z
    .locals 11
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 585
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 586
    .local v2, "atomEndPosition":J
    const/4 v4, 0x0

    .line 587
    .local v4, "seekRequired":Z
    iget-object v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 588
    .local v5, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 589
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    iget v8, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v9, v0

    invoke-interface {p1, v7, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 590
    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x66747970

    if-ne v7, v8, :cond_0

    .line 591
    iput-boolean v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    .line 592
    invoke-static {v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processFtypAtom(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v7

    iput v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_0

    .line 593
    :cond_0
    iget-object v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 594
    iget-object v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/Mp4Box$ContainerBox;

    new-instance v8, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v9, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v8, v9, v5}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v7, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$LeafBox;)V

    goto :goto_0

    .line 597
    :cond_1
    iget-boolean v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    if-nez v7, :cond_2

    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x6d646174

    if-ne v7, v8, :cond_2

    .line 600
    iput v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    .line 603
    :cond_2
    const-wide/32 v7, 0x40000

    cmp-long v7, v0, v7

    if-gez v7, :cond_3

    .line 604
    long-to-int v7, v0

    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 606
    :cond_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 607
    const/4 v4, 0x1

    .line 610
    :cond_4
    :goto_0
    invoke-direct {p0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 611
    iget-boolean v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToEdvdAtom:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 612
    iput-boolean v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingEditableVideoTracks:Z

    .line 613
    iget-wide v9, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->edvdAtomOffset:J

    iput-wide v9, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 614
    const/4 v4, 0x1

    .line 615
    iput-boolean v8, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToEdvdAtom:Z

    .line 617
    :cond_5
    if-eqz v4, :cond_6

    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_6

    goto :goto_1

    :cond_6
    move v6, v8

    :goto_1
    return v6
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 29
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 861
    .local v2, "inputPosition":J
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 862
    invoke-direct {v0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 863
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_0

    .line 864
    return v5

    .line 867
    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 868
    .local v4, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v14, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 869
    .local v14, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget v15, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 870
    .local v15, "sampleIndex":I
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v6, v15

    iget-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForEditableVideoTracks:J

    add-long v12, v7, v9

    .line 871
    .local v12, "position":J
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v15

    .line 872
    .local v6, "sampleSize":I
    iget-object v11, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 873
    .local v11, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    sub-long v7, v12, v2

    iget v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 874
    .local v7, "skipAmount":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    const/4 v10, 0x1

    if-ltz v9, :cond_12

    const-wide/32 v16, 0x40000

    cmp-long v9, v7, v16

    if-ltz v9, :cond_1

    move-wide/from16 v23, v2

    move-object v5, v11

    move-wide/from16 v27, v12

    goto/16 :goto_8

    .line 878
    :cond_1
    iget-object v9, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v9, v9, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v9, v10, :cond_2

    .line 881
    const-wide/16 v16, 0x8

    add-long v7, v7, v16

    .line 882
    add-int/lit8 v6, v6, -0x8

    move-wide v8, v7

    goto :goto_0

    .line 878
    :cond_2
    move-wide v8, v7

    .line 884
    .end local v7    # "skipAmount":J
    .local v8, "skipAmount":J
    :goto_0
    long-to-int v7, v8

    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 886
    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v7, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v5, "video/avc"

    invoke-static {v7, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 887
    iput-boolean v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 889
    :cond_3
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    move-wide/from16 v17, v12

    .end local v12    # "position":J
    .local v17, "position":J
    const/4 v13, 0x0

    if-eqz v5, :cond_9

    .line 892
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 893
    .local v5, "nalPrefixData":[B
    aput-byte v13, v5, v13

    .line 894
    aput-byte v13, v5, v10

    .line 895
    const/4 v12, 0x2

    aput-byte v13, v5, v12

    .line 896
    iget-object v12, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v12, v12, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v12, v10

    .line 897
    .local v12, "nalUnitPrefixLength":I
    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v7, v7, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v10, 0x4

    rsub-int/lit8 v7, v7, 0x4

    .line 901
    .local v7, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v10, v6, :cond_8

    .line 902
    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v10, :cond_7

    .line 908
    invoke-interface {v1, v5, v7, v12}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 909
    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v12

    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 910
    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 911
    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 912
    .local v10, "nalLengthInt":I
    const/4 v13, 0x1

    if-lt v10, v13, :cond_6

    .line 916
    add-int/lit8 v13, v10, -0x1

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 918
    iget-object v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    move-wide/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "inputPosition":J
    .local v23, "inputPosition":J
    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 919
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x4

    invoke-interface {v14, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 921
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 922
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 923
    add-int/2addr v6, v7

    .line 926
    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v2, :cond_4

    const/4 v2, 0x4

    aget-byte v3, v5, v2

    invoke-static {v3}, Landroidx/media3/container/NalUnitUtil;->isH264NalUnitDependedOn(B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 927
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    goto :goto_2

    .line 926
    :cond_4
    const/4 v2, 0x4

    :cond_5
    const/4 v3, 0x1

    .line 929
    .end local v10    # "nalLengthInt":I
    :goto_2
    move v10, v2

    move-wide/from16 v2, v23

    const/4 v13, 0x0

    goto :goto_1

    .line 913
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .restart local v10    # "nalLengthInt":I
    :cond_6
    move-wide/from16 v23, v2

    .end local v2    # "inputPosition":J
    .restart local v23    # "inputPosition":J
    const-string v2, "Invalid NAL length"

    const/4 v13, 0x0

    invoke-static {v2, v13}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 931
    .end local v10    # "nalLengthInt":I
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_7
    move-wide/from16 v23, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v13, 0x0

    .end local v2    # "inputPosition":J
    .restart local v23    # "inputPosition":J
    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v2, 0x0

    invoke-interface {v14, v1, v10, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v10

    .line 932
    .local v10, "writtenBytes":I
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v2, v10

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 933
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v10

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 934
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v2, v10

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 935
    .end local v10    # "writtenBytes":I
    move-wide/from16 v2, v23

    const/4 v10, 0x4

    const/4 v13, 0x0

    goto :goto_1

    .line 901
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_8
    move-wide/from16 v23, v2

    const/4 v3, 0x1

    const/4 v13, 0x0

    .line 937
    .end local v2    # "inputPosition":J
    .end local v5    # "nalPrefixData":[B
    .end local v7    # "nalUnitLengthFieldLengthDiff":I
    .end local v12    # "nalUnitPrefixLength":I
    .restart local v23    # "inputPosition":J
    move v2, v6

    const/4 v5, 0x0

    goto :goto_4

    .line 938
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_9
    move-wide/from16 v23, v2

    move v3, v10

    const/4 v13, 0x0

    .end local v2    # "inputPosition":J
    .restart local v23    # "inputPosition":J
    iget-object v2, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 939
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_a

    .line 940
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v6, v2}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 941
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v5, 0x7

    invoke-interface {v14, v2, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 942
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v5

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 944
    :cond_a
    add-int/lit8 v6, v6, 0x7

    goto :goto_3

    .line 945
    :cond_b
    if-eqz v11, :cond_c

    .line 946
    invoke-virtual {v11, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    .line 949
    :cond_c
    :goto_3
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v6, :cond_d

    .line 950
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v2, v6, v2

    const/4 v5, 0x0

    invoke-interface {v14, v1, v2, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    .line 951
    .local v2, "writtenBytes":I
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v7, v2

    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 952
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v2

    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 953
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v7, v2

    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 954
    .end local v2    # "writtenBytes":I
    goto :goto_3

    .line 949
    :cond_d
    const/4 v5, 0x0

    move v2, v6

    .line 957
    .end local v6    # "sampleSize":I
    .local v2, "sampleSize":I
    :goto_4
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v19, v6, v15

    .line 958
    .local v19, "timeUs":J
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v15

    .line 959
    .local v6, "sampleFlags":I
    iget-boolean v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v7, :cond_e

    .line 960
    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    move/from16 v21, v6

    goto :goto_5

    .line 959
    :cond_e
    move/from16 v21, v6

    .line 962
    .end local v6    # "sampleFlags":I
    .local v21, "sampleFlags":I
    :goto_5
    if-eqz v11, :cond_f

    .line 963
    const/4 v12, 0x0

    const/16 v22, 0x0

    move-object v6, v11

    move-object v7, v14

    move-wide/from16 v25, v8

    .end local v8    # "skipAmount":J
    .local v25, "skipAmount":J
    move-wide/from16 v8, v19

    move/from16 v10, v21

    move-object v5, v11

    .end local v11    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .local v5, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    move v11, v2

    move-wide/from16 v27, v17

    .end local v17    # "position":J
    .local v27, "position":J
    move-object v3, v13

    move-object/from16 v13, v22

    invoke-virtual/range {v6 .. v13}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 965
    add-int/lit8 v6, v15, 0x1

    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v6, v7, :cond_10

    .line 966
    invoke-virtual {v5, v14, v3}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_6

    .line 969
    .end local v5    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v25    # "skipAmount":J
    .end local v27    # "position":J
    .restart local v8    # "skipAmount":J
    .restart local v11    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v17    # "position":J
    :cond_f
    move-wide/from16 v25, v8

    move-object v5, v11

    move-wide/from16 v27, v17

    .end local v8    # "skipAmount":J
    .end local v11    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v17    # "position":J
    .restart local v5    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v25    # "skipAmount":J
    .restart local v27    # "position":J
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide/from16 v7, v19

    move/from16 v9, v21

    move v10, v2

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 973
    :cond_10
    :goto_6
    iget v3, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 974
    const/4 v3, -0x1

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 975
    const/4 v3, 0x0

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 976
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 977
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 979
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_11

    const/4 v10, 0x1

    goto :goto_7

    :cond_11
    move v10, v3

    :goto_7
    iput-boolean v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 980
    return v3

    .line 874
    .end local v5    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v19    # "timeUs":J
    .end local v21    # "sampleFlags":I
    .end local v23    # "inputPosition":J
    .end local v25    # "skipAmount":J
    .end local v27    # "position":J
    .local v2, "inputPosition":J
    .local v6, "sampleSize":I
    .local v7, "skipAmount":J
    .restart local v11    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .local v12, "position":J
    :cond_12
    move-wide/from16 v23, v2

    move-object v5, v11

    move-wide/from16 v27, v12

    .line 875
    .end local v2    # "inputPosition":J
    .end local v11    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v12    # "position":J
    .restart local v5    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v23    # "inputPosition":J
    .restart local v27    # "position":J
    :goto_8
    move-object/from16 v2, p2

    move-wide/from16 v9, v27

    .end local v27    # "position":J
    .local v9, "position":J
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 876
    const/4 v3, 0x1

    return v3
.end method

.method private readSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/extractor/mp4/SefReader;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;Ljava/util/List;)I

    move-result v0

    .line 623
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 624
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 626
    :cond_0
    return v0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1217
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-eq p0, v0, :cond_1

    const v0, 0x65647664

    if-ne p0, v0, :cond_0

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

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1195
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

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

.method private shouldSeekToEdvdAtom(Landroidx/media3/common/Metadata;)Z
    .locals 6
    .param p1, "mdtaMetadata"    # Landroidx/media3/common/Metadata;

    .line 779
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 780
    return v0

    .line 782
    :cond_0
    iget v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    .line 784
    nop

    .line 785
    const-string v1, "editable.tracks.offset"

    invoke-static {p1, v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v1

    .line 786
    .local v1, "edvdAtomOffsetMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    if-eqz v1, :cond_1

    .line 787
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v1, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    .line 788
    .local v2, "offset":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 789
    iput-wide v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->edvdAtomOffset:J

    .line 790
    const/4 v0, 0x1

    return v0

    .line 794
    .end local v1    # "edvdAtomOffsetMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    .end local v2    # "offset":J
    :cond_1
    return v0
.end method

.method private updateSampleIndex(Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .locals 3
    .param p1, "track"    # Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .param p2, "timeUs"    # J

    .line 1036
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1037
    .local v0, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-virtual {v0, p2, p3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 1038
    .local v1, "sampleIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1040
    invoke-virtual {v0, p2, p3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 1042
    :cond_0
    iput v1, p1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 1043
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 411
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSampleTimestampsUs(I)[J
    .locals 1
    .param p1, "trackId"    # I

    .line 494
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 495
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0

    .line 497
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    return-object v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 1
    .param p1, "timeUs"    # J

    .line 416
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    return-object v0
.end method

.method public getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 19
    .param p1, "timeUs"    # J
    .param p3, "trackId"    # I

    .line 432
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 433
    new-instance v4, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v5, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v4, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v4

    .line 438
    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 439
    .local v4, "secondTimeUs":J
    const-wide/16 v6, -0x1

    .line 442
    .local v6, "secondOffset":J
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    iget v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 444
    .local v9, "mainTrackIndex":I
    :goto_0
    if-eq v9, v8, :cond_4

    .line 445
    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 446
    .local v10, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-static {v10, v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v11

    .line 447
    .local v11, "sampleIndex":I
    if-ne v11, v8, :cond_2

    .line 448
    new-instance v8, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v12, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v8, v12}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v8

    .line 450
    :cond_2
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v13, v12, v11

    .line 451
    .local v13, "sampleTimeUs":J
    move-wide v15, v13

    .line 452
    .local v15, "firstTimeUs":J
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v17, v12, v11

    .line 453
    .local v17, "firstOffset":J
    cmp-long v12, v13, v1

    if-gez v12, :cond_3

    iget v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_3

    .line 454
    invoke-virtual {v10, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    .line 455
    .local v12, "secondSampleIndex":I
    if-eq v12, v8, :cond_3

    if-eq v12, v11, :cond_3

    .line 456
    iget-object v8, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v8, v12

    .line 457
    iget-object v8, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v12

    .line 460
    .end local v10    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v11    # "sampleIndex":I
    .end local v12    # "secondSampleIndex":I
    .end local v13    # "sampleTimeUs":J
    :cond_3
    move-wide v10, v15

    goto :goto_1

    .line 461
    .end local v15    # "firstTimeUs":J
    .end local v17    # "firstOffset":J
    :cond_4
    move-wide/from16 v15, p1

    .line 462
    .restart local v15    # "firstTimeUs":J
    const-wide v17, 0x7fffffffffffffffL

    move-wide v10, v15

    .line 465
    .end local v15    # "firstTimeUs":J
    .local v10, "firstTimeUs":J
    .restart local v17    # "firstOffset":J
    :goto_1
    const/4 v8, -0x1

    if-ne v3, v8, :cond_6

    .line 467
    const/4 v8, 0x0

    move-wide/from16 v14, v17

    .end local v17    # "firstOffset":J
    .local v8, "i":I
    .local v14, "firstOffset":J
    :goto_2
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v12, v12

    if-ge v8, v12, :cond_7

    .line 468
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v8, v12, :cond_5

    .line 469
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v12, v12, v8

    iget-object v12, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 470
    .local v12, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-static {v12, v10, v11, v14, v15}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v14

    .line 471
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v4, v16

    if-eqz v13, :cond_5

    .line 472
    invoke-static {v12, v4, v5, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v6

    .line 467
    .end local v12    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 465
    .end local v8    # "i":I
    .end local v14    # "firstOffset":J
    .restart local v17    # "firstOffset":J
    :cond_6
    move-wide/from16 v14, v17

    .line 478
    .end local v17    # "firstOffset":J
    .restart local v14    # "firstOffset":J
    :cond_7
    new-instance v8, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v8, v10, v11, v14, v15}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 479
    .local v8, "firstSeekPoint":Landroidx/media3/extractor/SeekPoint;
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v4, v12

    if-nez v12, :cond_8

    .line 480
    new-instance v12, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v12, v8}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v12

    .line 482
    :cond_8
    new-instance v12, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v12, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 483
    .local v12, "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v13, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v13, v8, v12}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v13
.end method

.method public getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 338
    nop

    .line 339
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    .line 341
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 342
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    nop

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 395
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 393
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 388
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x1

    return v0

    .line 383
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 376
    return-void
.end method

.method public seek(JJ)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 346
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 348
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 349
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 350
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 351
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 353
    iget v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 354
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 357
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 358
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 360
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/SefReader;->reset()V

    .line 361
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 364
    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 365
    .local v3, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    invoke-direct {p0, v3, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->updateSampleIndex(Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 366
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v4, :cond_3

    .line 367
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v4}, Landroidx/media3/extractor/TrueHdSampleRechunker;->reset()V

    .line 364
    .end local v3    # "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_4
    :goto_2
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 325
    :goto_0
    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;

    move-result-object v0

    .line 327
    .local v0, "sniffFailure":Landroidx/media3/extractor/SniffFailure;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    .line 328
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method
