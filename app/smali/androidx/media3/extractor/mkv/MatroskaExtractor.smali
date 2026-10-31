.class public Landroidx/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BLOCK_ADDITIONAL_ID_VP9_ITU_T_35:I = 0x4

.field private static final BLOCK_ADD_ID_TYPE_DVCC:I = 0x64766343

.field private static final BLOCK_ADD_ID_TYPE_DVVC:I = 0x64767643

.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_ASS:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final CODEC_ID_AV1:Ljava/lang/String; = "V_AV1"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_DVBSUB:Ljava/lang/String; = "S_DVBSUB"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP2:Ljava/lang/String; = "A_MPEG/L2"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_FLOAT:Ljava/lang/String; = "A_PCM/FLOAT/IEEE"

.field private static final CODEC_ID_PCM_INT_BIG:Ljava/lang/String; = "A_PCM/INT/BIG"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final CODEC_ID_VTT:Ljava/lang/String; = "S_TEXT/WEBVTT"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DISABLE_SEEK_FOR_CUES:I = 0x1

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x2

.field private static final FOURCC_COMPRESSION_DIVX:I = 0x58564944

.field private static final FOURCC_COMPRESSION_H263:I = 0x33363248

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_ADDITIONAL:I = 0xa5

.field private static final ID_BLOCK_ADDITIONS:I = 0x75a1

.field private static final ID_BLOCK_ADDITION_MAPPING:I = 0x41e4

.field private static final ID_BLOCK_ADD_ID:I = 0xee

.field private static final ID_BLOCK_ADD_ID_EXTRA_DATA:I = 0x41ed

.field private static final ID_BLOCK_ADD_ID_TYPE:I = 0x41e7

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_BLOCK_MORE:I = 0xa6

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_COLOUR:I = 0x55b0

.field private static final ID_COLOUR_BITS_PER_CHANNEL:I = 0x55b2

.field private static final ID_COLOUR_PRIMARIES:I = 0x55bb

.field private static final ID_COLOUR_RANGE:I = 0x55b9

.field private static final ID_COLOUR_TRANSFER:I = 0x55ba

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISCARD_PADDING:I = 0x75a2

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_LUMNINANCE_MAX:I = 0x55d9

.field private static final ID_LUMNINANCE_MIN:I = 0x55da

.field private static final ID_MASTERING_METADATA:I = 0x55d0

.field private static final ID_MAX_BLOCK_ADDITION_ID:I = 0x55ee

.field private static final ID_MAX_CLL:I = 0x55bc

.field private static final ID_MAX_FALL:I = 0x55bd

.field private static final ID_NAME:I = 0x536e

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PRIMARY_B_CHROMATICITY_X:I = 0x55d5

.field private static final ID_PRIMARY_B_CHROMATICITY_Y:I = 0x55d6

.field private static final ID_PRIMARY_G_CHROMATICITY_X:I = 0x55d3

.field private static final ID_PRIMARY_G_CHROMATICITY_Y:I = 0x55d4

.field private static final ID_PRIMARY_R_CHROMATICITY_X:I = 0x55d1

.field private static final ID_PRIMARY_R_CHROMATICITY_Y:I = 0x55d2

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_POSE_PITCH:I = 0x7674

.field private static final ID_PROJECTION_POSE_ROLL:I = 0x7675

.field private static final ID_PROJECTION_POSE_YAW:I = 0x7673

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_PROJECTION_TYPE:I = 0x7671

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final ID_WHITE_POINT_CHROMATICITY_X:I = 0x55d7

.field private static final ID_WHITE_POINT_CHROMATICITY_Y:I = 0x55d8

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_PREFIX_END_TIMECODE_OFFSET:I = 0x15

.field private static final SSA_TIMECODE_FORMAT:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field private static final SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x2710L

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MatroskaExtractor"

.field private static final TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final VTT_PREFIX:[B

.field private static final VTT_PREFIX_END_TIMECODE_OFFSET:I = 0x19

.field private static final VTT_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d.%03d"

.field private static final VTT_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockAdditionalId:I

.field private blockDurationUs:J

.field private blockFlags:I

.field private blockGroupDiscardPaddingNs:J

.field private blockHasReferenceBlock:Z

.field private blockSampleCount:I

.field private blockSampleIndex:I

.field private blockSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Landroidx/media3/common/util/LongArray;

.field private cueTimesUs:Landroidx/media3/common/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field private final encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private haveOutputSample:Z

.field private final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private final parseSubtitlesDuringExtraction:Z

.field private final reader:Landroidx/media3/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private final subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

.field private final supplementalData:Landroidx/media3/common/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Landroidx/media3/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 125
    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    .line 313
    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    .line 332
    nop

    .line 333
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 348
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 377
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    .line 405
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v0, "trackNameToRotationDegrees":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    .line 417
    .end local v0    # "trackNameToRotationDegrees":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/EbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 501
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    or-int/lit8 v1, p1, 0x2

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/EbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 512
    return-void
.end method

.method constructor <init>(Landroidx/media3/extractor/mkv/EbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 5
    .param p1, "reader"    # Landroidx/media3/extractor/mkv/EbmlReader;
    .param p2, "flags"    # I
    .param p3, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 441
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 442
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 443
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 457
    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 458
    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 459
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 537
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/EbmlReader;

    .line 538
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/EbmlReader;

    new-instance v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;Landroidx/media3/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/mkv/EbmlReader;->init(Landroidx/media3/extractor/mkv/EbmlProcessor;)V

    .line 539
    iput-object p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 540
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 541
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->parseSubtitlesDuringExtraction:Z

    .line 542
    new-instance v0, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    .line 543
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 544
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 545
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    .line 546
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 547
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v3, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 548
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 549
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 550
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    .line 551
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 552
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 553
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    .line 554
    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 555
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 2
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 521
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/EbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 522
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 1
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p2, "flags"    # I

    .line 532
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/EbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 533
    return-void
.end method

.method static synthetic access$500()[B
    .locals 1

    .line 83
    sget-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 83
    sget-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/UUID;
    .locals 1

    .line 83
    sget-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private assertInCues(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    if-eqz v0, :cond_0

    .line 1460
    return-void

    .line 1457
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be in a Cues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private assertInTrackEntry(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-eqz v0, :cond_0

    .line 1452
    return-void

    .line 1449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be in a TrackEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    return-void
.end method

.method private buildSeekMap(Landroidx/media3/common/util/LongArray;Landroidx/media3/common/util/LongArray;)Landroidx/media3/extractor/SeekMap;
    .locals 10
    .param p1, "cueTimesUs"    # Landroidx/media3/common/util/LongArray;
    .param p2, "cueClusterPositions"    # Landroidx/media3/common/util/LongArray;

    .line 1879
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 1882
    invoke-virtual {p1}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 1884
    invoke-virtual {p2}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 1888
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    .line 1889
    .local v0, "cuePointsSize":I
    new-array v1, v0, [I

    .line 1890
    .local v1, "sizes":[I
    new-array v2, v0, [J

    .line 1891
    .local v2, "offsets":[J
    new-array v3, v0, [J

    .line 1892
    .local v3, "durationsUs":[J
    new-array v4, v0, [J

    .line 1893
    .local v4, "timesUs":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 1894
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1895
    iget-wide v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {p2, v5}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v2, v5

    .line 1893
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1897
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_2

    .line 1898
    add-int/lit8 v6, v5, 0x1

    aget-wide v6, v2, v6

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v1, v5

    .line 1899
    add-int/lit8 v6, v5, 0x1

    aget-wide v6, v4, v6

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1897
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1903
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 1904
    .local v5, "lastValidIndex":I
    :goto_2
    if-lez v5, :cond_3

    aget-wide v6, v4, v5

    iget-wide v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 1905
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1909
    :cond_3
    iget-wide v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v6, v8

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v1, v5

    .line 1911
    iget-wide v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1914
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_4

    .line 1915
    const-string v6, "MatroskaExtractor"

    const-string v7, "Discarding trailing cue points with timestamps greater than total duration"

    invoke-static {v6, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    add-int/lit8 v6, v5, 0x1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1917
    add-int/lit8 v6, v5, 0x1

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 1918
    add-int/lit8 v6, v5, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1919
    add-int/lit8 v6, v5, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 1922
    :cond_4
    new-instance v6, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v6, v1, v2, v3, v4}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v6

    .line 1886
    .end local v0    # "cuePointsSize":I
    .end local v1    # "sizes":[I
    .end local v2    # "offsets":[J
    .end local v3    # "durationsUs":[J
    .end local v4    # "timesUs":[J
    .end local v5    # "lastValidIndex":I
    :cond_5
    :goto_3
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 12
    .param p1, "track"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "timeUs"    # J
    .param p4, "flags"    # I
    .param p5, "size"    # I
    .param p6, "offset"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1475
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1476
    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-wide v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move/from16 v2, p5

    goto/16 :goto_5

    .line 1479
    :cond_0
    const-string v2, "S_TEXT/UTF8"

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1480
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1481
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1482
    :cond_1
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const-string v4, "MatroskaExtractor"

    if-le v2, v3, :cond_2

    .line 1483
    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1484
    :cond_2
    iget-wide v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v7

    if-nez v2, :cond_4

    .line 1485
    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :cond_3
    :goto_0
    move/from16 v2, p5

    goto :goto_3

    .line 1487
    :cond_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->setSubtitleEndTime(Ljava/lang/String;J[B)V

    .line 1491
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .local v2, "i":I
    :goto_1
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1492
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-nez v4, :cond_5

    .line 1493
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 1494
    goto :goto_2

    .line 1491
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1499
    .end local v2    # "i":I
    :cond_6
    :goto_2
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1500
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    add-int v2, p5, v2

    .line 1504
    .end local p5    # "size":I
    .local v2, "size":I
    :goto_3
    const/high16 v4, 0x10000000

    and-int v4, p4, v4

    if-eqz v4, :cond_8

    .line 1505
    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v4, v3, :cond_7

    .line 1508
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    goto :goto_4

    .line 1511
    :cond_7
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    .line 1512
    .local v4, "supplementalDataSize":I
    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x2

    invoke-interface {v5, v6, v4, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 1514
    add-int/2addr v2, v4

    .line 1517
    .end local v4    # "supplementalDataSize":I
    :cond_8
    :goto_4
    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-wide v6, p2

    move/from16 v8, p4

    move v9, v2

    move/from16 v10, p6

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1519
    :goto_5
    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    .line 1520
    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "length"    # I

    .line 2005
    if-nez p0, :cond_0

    .line 2006
    new-array v0, p1, [I

    return-object v0

    .line 2007
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 2008
    return-object p0

    .line 2011
    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    return-object v0
.end method

.method private finishWriteSampleData()I
    .locals 1

    .line 1743
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1744
    .local v0, "sampleSize":I
    invoke-direct {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 1745
    return v0
.end method

.method private static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .locals 9
    .param p0, "timeUs"    # J
    .param p2, "timecodeFormat"    # Ljava/lang/String;
    .param p3, "lastTimecodeValueScalingFactor"    # J

    .line 1826
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1828
    const-wide v0, 0xd693a400L

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 1829
    .local v0, "hours":I
    int-to-long v1, v0

    const-wide/16 v3, 0xe10

    mul-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 1830
    const-wide/32 v1, 0x3938700

    div-long v1, p0, v1

    long-to-int v1, v1

    .line 1831
    .local v1, "minutes":I
    int-to-long v5, v1

    const-wide/16 v7, 0x3c

    mul-long/2addr v5, v7

    mul-long/2addr v5, v3

    sub-long/2addr p0, v5

    .line 1832
    div-long v5, p0, v3

    long-to-int v2, v5

    .line 1833
    .local v2, "seconds":I
    int-to-long v5, v2

    mul-long/2addr v5, v3

    sub-long/2addr p0, v5

    .line 1834
    div-long v3, p0, p3

    long-to-int v3, v3

    .line 1835
    .local v3, "lastValue":I
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1837
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1836
    invoke-static {v4}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1838
    .local v4, "timeCodeData":[B
    return-object v4
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 3
    .param p0, "codecId"    # Ljava/lang/String;

    .line 1960
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "A_OPUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "A_FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "A_EAC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "V_MPEG2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "V_THEORA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "V_VP9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "V_VP8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "V_AV1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "A_DTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "A_AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "A_AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "S_VOBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "S_DVBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_19
    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1a
    const-string v0, "A_MPEG/L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_1b
    const-string v0, "A_MPEG/L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_1c
    const-string v0, "A_VORBIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_1d
    const-string v0, "A_TRUEHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_1e
    const-string v0, "A_MS/ACM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_1f
    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_20
    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1996
    return v1

    .line 1994
    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 3
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeSeekForCues(Landroidx/media3/extractor/PositionHolder;J)Z
    .locals 7
    .param p1, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .param p2, "currentPosition"    # J

    .line 1935
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1936
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1937
    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v3, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 1938
    iput-boolean v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    .line 1939
    return v1

    .line 1943
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 1944
    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v2, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 1945
    iput-wide v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1946
    return v1

    .line 1948
    :cond_1
    return v2
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 90
    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private readScratch(Landroidx/media3/extractor/ExtractorInput;I)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "requiredLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1528
    return-void

    .line 1530
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1531
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 1533
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1534
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 1535
    return-void
.end method

.method private resetWriteSampleData()V
    .locals 2

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1751
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1752
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1753
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1754
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1755
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1756
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1757
    iput-byte v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1758
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1759
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1760
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 7
    .param p1, "unscaledTimecode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1952
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1956
    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide/16 v5, 0x3e8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 1953
    :cond_0
    const-string v0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static setSubtitleEndTime(Ljava/lang/String;J[B)V
    .locals 4
    .param p0, "codecId"    # Ljava/lang/String;
    .param p1, "durationUs"    # J
    .param p3, "subtitleData"    # [B

    .line 1795
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-wide/16 v2, 0x3e8

    packed-switch v0, :pswitch_data_0

    .line 1815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1809
    :pswitch_0
    nop

    .line 1810
    const-string v0, "%02d:%02d:%02d.%03d"

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v0

    .line 1812
    .local v0, "endTimecode":[B
    const/16 v2, 0x19

    .line 1813
    .local v2, "endTimecodeOffset":I
    goto :goto_2

    .line 1803
    .end local v0    # "endTimecode":[B
    .end local v2    # "endTimecodeOffset":I
    :pswitch_1
    nop

    .line 1804
    const-string v0, "%01d:%02d:%02d:%02d"

    const-wide/16 v2, 0x2710

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v0

    .line 1806
    .restart local v0    # "endTimecode":[B
    const/16 v2, 0x15

    .line 1807
    .restart local v2    # "endTimecodeOffset":I
    goto :goto_2

    .line 1797
    .end local v0    # "endTimecode":[B
    .end local v2    # "endTimecodeOffset":I
    :pswitch_2
    nop

    .line 1798
    const-string v0, "%02d:%02d:%02d,%03d"

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v0

    .line 1800
    .restart local v0    # "endTimecode":[B
    const/16 v2, 0x13

    .line 1801
    .restart local v2    # "endTimecodeOffset":I
    nop

    .line 1817
    :goto_2
    array-length v3, v0

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1818
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .locals 16
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "track"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p3, "size"    # I
    .param p4, "isBlockGroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1550
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1551
    sget-object v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    .line 1552
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v4

    return v4

    .line 1553
    :cond_0
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1554
    sget-object v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    .line 1555
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v4

    return v4

    .line 1556
    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1557
    sget-object v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    .line 1558
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v4

    return v4

    .line 1561
    :cond_2
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1562
    .local v4, "output":Landroidx/media3/extractor/TrackOutput;
    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_12

    .line 1563
    iget-boolean v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v5, :cond_f

    .line 1566
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v10, -0x40000001    # -1.9999999f

    and-int/2addr v5, v10

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1567
    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v10, 0x80

    if-nez v5, :cond_4

    .line 1568
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {v1, v5, v9, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1569
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v8

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1570
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v9

    and-int/2addr v5, v10

    if-eq v5, v10, :cond_3

    .line 1574
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v9

    iput-byte v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1575
    iput-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    .line 1571
    :cond_3
    const-string v5, "Extension bit is set in signal byte"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5

    .line 1577
    :cond_4
    :goto_0
    iget-byte v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_5

    move v5, v8

    goto :goto_1

    :cond_5
    move v5, v9

    .line 1578
    .local v5, "isEncrypted":Z
    :goto_1
    if-eqz v5, :cond_10

    .line 1579
    iget-byte v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v11, v7

    if-ne v11, v7, :cond_6

    move v11, v8

    goto :goto_2

    :cond_6
    move v11, v9

    .line 1580
    .local v11, "hasSubsampleEncryption":Z
    :goto_2
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v12, v13

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1581
    iget-boolean v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v12, :cond_8

    .line 1582
    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    const/16 v13, 0x8

    invoke-interface {v1, v12, v9, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1583
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v13

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1584
    iput-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1586
    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    .line 1587
    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    move v10, v9

    :goto_3
    or-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, v12, v9

    .line 1588
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1589
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v4, v10, v8, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 1590
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v8

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1592
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1593
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v4, v10, v13, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 1597
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v13

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1599
    :cond_8
    if-eqz v11, :cond_10

    .line 1600
    iget-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v10, :cond_9

    .line 1601
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    invoke-interface {v1, v10, v9, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1602
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v10, v8

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1603
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1604
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1605
    iput-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1607
    :cond_9
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/2addr v10, v6

    .line 1608
    .local v10, "samplePartitionDataSize":I
    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v10}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1609
    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    invoke-interface {v1, v12, v9, v10}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1610
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v10

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1611
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v12, v7

    add-int/2addr v12, v8

    int-to-short v12, v12

    .line 1612
    .local v12, "subsampleCount":S
    mul-int/lit8 v13, v12, 0x6

    add-int/2addr v13, v7

    .line 1613
    .local v13, "subsampleDataSize":I
    iget-object v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v14, :cond_a

    iget-object v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1614
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    if-ge v14, v13, :cond_b

    .line 1615
    :cond_a
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    iput-object v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1617
    :cond_b
    iget-object v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1618
    iget-object v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1625
    const/4 v14, 0x0

    .line 1626
    .local v14, "partitionOffset":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v15, v6, :cond_d

    .line 1627
    move v6, v14

    .line 1628
    .local v6, "previousPartitionOffset":I
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    .line 1629
    rem-int/lit8 v9, v15, 0x2

    if-nez v9, :cond_c

    .line 1630
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v8, v14, v6

    int-to-short v8, v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1633
    :cond_c
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v9, v14, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1626
    .end local v6    # "previousPartitionOffset":I
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_4

    .line 1636
    .end local v15    # "i":I
    :cond_d
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v6, v3, v6

    sub-int/2addr v6, v14

    .line 1637
    .local v6, "finalPartitionSize":I
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    rem-int/2addr v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 1638
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1640
    :cond_e
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v9, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1641
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1643
    :goto_6
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v8, v9, v13}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 1644
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v9, 0x1

    invoke-interface {v4, v8, v13, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 1648
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v8, v13

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_7

    .line 1651
    .end local v5    # "isEncrypted":Z
    .end local v6    # "finalPartitionSize":I
    .end local v10    # "samplePartitionDataSize":I
    .end local v11    # "hasSubsampleEncryption":Z
    .end local v12    # "subsampleCount":S
    .end local v13    # "subsampleDataSize":I
    .end local v14    # "partitionOffset":I
    :cond_f
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v5, :cond_10

    .line 1653
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v8, v8

    invoke-virtual {v5, v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    goto :goto_8

    .line 1651
    :cond_10
    :goto_7
    nop

    .line 1656
    :goto_8
    move/from16 v5, p4

    invoke-static {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$400(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1657
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x10000000

    or-int/2addr v6, v8

    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1658
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1661
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v3

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int/2addr v6, v8

    .line 1662
    .local v6, "sampleSize":I
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1663
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    .line 1664
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    .line 1665
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    .line 1666
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x3

    aput-byte v9, v8, v10

    .line 1667
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 1668
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v8, v9

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1671
    .end local v6    # "sampleSize":I
    :cond_11
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    goto :goto_9

    .line 1562
    :cond_12
    move/from16 v5, p4

    .line 1673
    :goto_9
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v3, v6

    .line 1675
    .end local p3    # "size":I
    .local v3, "size":I
    const-string v6, "V_MPEG4/ISO/AVC"

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "V_MPEGH/ISO/HEVC"

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_c

    .line 1710
    :cond_13
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v6, :cond_15

    .line 1711
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v6

    if-nez v6, :cond_14

    const/4 v8, 0x1

    goto :goto_a

    :cond_14
    const/4 v8, 0x0

    :goto_a
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1712
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v6, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    .line 1714
    :cond_15
    :goto_b
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, v3, :cond_19

    .line 1715
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v6, v3, v6

    invoke-direct {v0, v1, v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeToOutput(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/TrackOutput;I)I

    move-result v6

    .line 1716
    .local v6, "bytesWritten":I
    iget v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v6

    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1717
    iget v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1718
    .end local v6    # "bytesWritten":I
    goto :goto_b

    .line 1680
    :cond_16
    :goto_c
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    .line 1681
    .local v6, "nalLengthData":[B
    const/4 v8, 0x0

    aput-byte v8, v6, v8

    .line 1682
    const/4 v9, 0x1

    aput-byte v8, v6, v9

    .line 1683
    aput-byte v8, v6, v7

    .line 1684
    iget v7, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1685
    .local v7, "nalUnitLengthFieldLength":I
    iget v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const/4 v9, 0x4

    rsub-int/lit8 v8, v8, 0x4

    .line 1689
    .local v8, "nalUnitLengthFieldLengthDiff":I
    :goto_d
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v9, v3, :cond_18

    .line 1690
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_17

    .line 1692
    invoke-direct {v0, v1, v6, v8, v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeToTarget(Landroidx/media3/extractor/ExtractorInput;[BII)V

    .line 1694
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v9, v7

    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1695
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1696
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1698
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1699
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v10, 0x4

    invoke-interface {v4, v9, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1700
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v9, v10

    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_d

    .line 1703
    :cond_17
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    invoke-direct {v0, v1, v4, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeToOutput(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/TrackOutput;I)I

    move-result v9

    .line 1704
    .local v9, "bytesWritten":I
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v10, v9

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1705
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1706
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v10, v9

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1707
    .end local v9    # "bytesWritten":I
    goto :goto_d

    .line 1709
    .end local v6    # "nalLengthData":[B
    .end local v7    # "nalUnitLengthFieldLength":I
    .end local v8    # "nalUnitLengthFieldLengthDiff":I
    :cond_18
    nop

    .line 1721
    :cond_19
    const-string v6, "A_VORBIS"

    iget-object v7, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1730
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1731
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1732
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v7

    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1735
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v6

    return v6
.end method

.method private writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "samplePrefix"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1764
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1765
    .local v0, "sizeWithPrefix":I
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 1768
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    goto :goto_0

    .line 1770
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1772
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v3, p2

    invoke-interface {p1, v1, v3, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1773
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1774
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 1777
    return-void
.end method

.method private writeToOutput(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/TrackOutput;I)I
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "output"    # Landroidx/media3/extractor/TrackOutput;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 1862
    .local v0, "strippedBytesLeft":I
    if-lez v0, :cond_0

    .line 1863
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1864
    .local v1, "bytesWritten":I
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p2, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    goto :goto_0

    .line 1866
    .end local v1    # "bytesWritten":I
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, p1, p3, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    .line 1868
    .restart local v1    # "bytesWritten":I
    :goto_0
    return v1
.end method

.method private writeToTarget(Landroidx/media3/extractor/ExtractorInput;[BII)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "target"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1848
    .local v0, "pendingStrippedBytes":I
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1849
    if-lez v0, :cond_0

    .line 1850
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1852
    :cond_0
    return-void
.end method


# virtual methods
.method protected binaryElement(IILandroidx/media3/extractor/ExtractorInput;)V
    .locals 24
    .param p1, "id"    # I
    .param p2, "contentSize"    # I
    .param p3, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1230
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v8, :sswitch_data_0

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1246
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1247
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v9, [B

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1248
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v10, v0, v11, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1249
    goto/16 :goto_d

    .line 1241
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1242
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v9, [B

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1243
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v10, v0, v11, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1244
    goto/16 :goto_d

    .line 1232
    :sswitch_2
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 1233
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    rsub-int/lit8 v1, v9, 0x4

    invoke-interface {v10, v0, v1, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1234
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1235
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 1236
    goto/16 :goto_d

    .line 1257
    :sswitch_3
    new-array v0, v9, [B

    .line 1258
    .local v0, "encryptionKey":[B
    invoke-interface {v10, v0, v11, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1259
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v1

    new-instance v2, Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-direct {v2, v12, v0, v11, v11}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 1262
    goto/16 :goto_d

    .line 1251
    .end local v0    # "encryptionKey":[B
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1253
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v9, [B

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1254
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v10, v0, v11, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1255
    goto/16 :goto_d

    .line 1238
    :sswitch_5
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    invoke-virtual {v7, v0, v10, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->handleBlockAddIDExtraData(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Landroidx/media3/extractor/ExtractorInput;I)V

    .line 1239
    goto/16 :goto_d

    .line 1409
    :sswitch_6
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v0, v1, :cond_0

    .line 1410
    return-void

    .line 1412
    :cond_0
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1413
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1412
    invoke-virtual {v7, v0, v1, v10, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->handleBlockAdditionalData(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;ILandroidx/media3/extractor/ExtractorInput;I)V

    .line 1414
    goto/16 :goto_d

    .line 1270
    :sswitch_7
    iget v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v3, 0x8

    if-nez v2, :cond_1

    .line 1271
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    invoke-virtual {v2, v10, v11, v12, v3}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1272
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    invoke-virtual {v2}, Landroidx/media3/extractor/mkv/VarintReader;->getLastLength()I

    move-result v2

    iput v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    .line 1273
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1274
    iput v12, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1275
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1278
    :cond_1
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 1281
    .local v13, "track":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    if-nez v13, :cond_2

    .line 1282
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v0, v9, v0

    invoke-interface {v10, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1283
    iput v11, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1284
    return-void

    .line 1287
    :cond_2
    invoke-static {v13}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$100(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 1289
    iget v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v2, v12, :cond_14

    .line 1291
    const/4 v2, 0x3

    invoke-direct {v7, v10, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 1292
    iget-object v5, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v1

    and-int/lit8 v5, v5, 0x6

    shr-int/2addr v5, v12

    .line 1293
    .local v5, "lacing":I
    const/16 v6, 0xff

    if-nez v5, :cond_3

    .line 1294
    iput v12, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1295
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v0, v12}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v0

    iput-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1296
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v14, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v14, v9, v14

    sub-int/2addr v14, v2

    aput v14, v0, v11

    goto/16 :goto_6

    .line 1299
    :cond_3
    const/4 v14, 0x4

    invoke-direct {v7, v10, v14}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 1300
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v6

    add-int/2addr v15, v12

    iput v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1301
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    invoke-static {v15, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v4

    iput-object v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1302
    if-ne v5, v1, :cond_4

    .line 1303
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v0, v9, v0

    sub-int/2addr v0, v14

    iget v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v0, v2

    .line 1305
    .local v0, "blockLacingSampleSize":I
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    invoke-static {v2, v11, v4, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 1306
    .end local v0    # "blockLacingSampleSize":I
    goto/16 :goto_6

    :cond_4
    if-ne v5, v12, :cond_7

    .line 1307
    const/4 v0, 0x0

    .line 1308
    .local v0, "totalSamplesSize":I
    const/4 v2, 0x4

    .line 1309
    .local v2, "headerSize":I
    const/4 v4, 0x0

    .local v4, "sampleIndex":I
    :goto_0
    iget v14, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v14, v12

    if-ge v4, v14, :cond_6

    .line 1310
    iget-object v14, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v11, v14, v4

    .line 1313
    :cond_5
    add-int/2addr v2, v12

    invoke-direct {v7, v10, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 1314
    iget-object v14, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v14

    add-int/lit8 v15, v2, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v6

    .line 1315
    .local v14, "byteValue":I
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v4

    add-int v16, v16, v14

    aput v16, v15, v4

    .line 1316
    if-eq v14, v6, :cond_5

    .line 1317
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v15, v15, v4

    add-int/2addr v0, v15

    .line 1309
    .end local v14    # "byteValue":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1319
    .end local v4    # "sampleIndex":I
    :cond_6
    iget-object v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v14, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v14, v12

    iget v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v15, v9, v15

    sub-int/2addr v15, v2

    sub-int/2addr v15, v0

    aput v15, v4, v14

    .line 1321
    .end local v0    # "totalSamplesSize":I
    .end local v2    # "headerSize":I
    goto/16 :goto_6

    :cond_7
    if-ne v5, v2, :cond_13

    .line 1322
    const/4 v2, 0x0

    .line 1323
    .local v2, "totalSamplesSize":I
    const/4 v4, 0x4

    .line 1324
    .local v4, "headerSize":I
    const/4 v14, 0x0

    .local v14, "sampleIndex":I
    :goto_1
    iget v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v15, v12

    if-ge v14, v15, :cond_f

    .line 1325
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v11, v15, v14

    .line 1326
    add-int/lit8 v4, v4, 0x1

    invoke-direct {v7, v10, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 1327
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v15

    add-int/lit8 v16, v4, -0x1

    aget-byte v15, v15, v16

    if-eqz v15, :cond_e

    .line 1331
    const-wide/16 v16, 0x0

    .line 1332
    .local v16, "readValue":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v3, :cond_b

    .line 1333
    rsub-int/lit8 v18, v15, 0x7

    shl-int v1, v12, v18

    .line 1334
    .local v1, "lengthMask":I
    iget-object v11, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v11

    add-int/lit8 v19, v4, -0x1

    aget-byte v11, v11, v19

    and-int/2addr v11, v1

    if-eqz v11, :cond_a

    .line 1335
    add-int/lit8 v11, v4, -0x1

    .line 1336
    .local v11, "readPosition":I
    add-int/2addr v4, v15

    .line 1337
    invoke-direct {v7, v10, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 1338
    iget-object v12, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    add-int/lit8 v20, v11, 0x1

    .end local v11    # "readPosition":I
    .local v20, "readPosition":I
    aget-byte v11, v12, v11

    and-int/2addr v11, v6

    not-int v12, v1

    and-int/2addr v11, v12

    int-to-long v11, v11

    move-wide/from16 v16, v11

    move/from16 v11, v20

    .line 1339
    .end local v20    # "readPosition":I
    .restart local v11    # "readPosition":I
    :goto_3
    if-ge v11, v4, :cond_8

    .line 1340
    shl-long v16, v16, v3

    .line 1341
    iget-object v12, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    add-int/lit8 v20, v11, 0x1

    .end local v11    # "readPosition":I
    .restart local v20    # "readPosition":I
    aget-byte v11, v12, v11

    and-int/2addr v11, v6

    int-to-long v11, v11

    or-long v16, v16, v11

    move/from16 v11, v20

    goto :goto_3

    .line 1344
    .end local v20    # "readPosition":I
    .restart local v11    # "readPosition":I
    :cond_8
    if-lez v14, :cond_9

    .line 1345
    mul-int/lit8 v12, v15, 0x7

    add-int/lit8 v12, v12, 0x6

    const-wide/16 v20, 0x1

    shl-long v22, v20, v12

    sub-long v22, v22, v20

    sub-long v16, v16, v22

    move-wide/from16 v11, v16

    goto :goto_4

    .line 1344
    :cond_9
    move-wide/from16 v11, v16

    goto :goto_4

    .line 1332
    .end local v1    # "lengthMask":I
    .end local v11    # "readPosition":I
    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_b
    move-wide/from16 v11, v16

    .line 1350
    .end local v15    # "i":I
    .end local v16    # "readValue":J
    .local v11, "readValue":J
    :goto_4
    const-wide/32 v16, -0x80000000

    cmp-long v1, v11, v16

    if-ltz v1, :cond_d

    const-wide/32 v16, 0x7fffffff

    cmp-long v1, v11, v16

    if-gtz v1, :cond_d

    .line 1354
    long-to-int v1, v11

    .line 1355
    .local v1, "intReadValue":I
    iget-object v15, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1356
    if-nez v14, :cond_c

    .line 1357
    move v6, v1

    goto :goto_5

    .line 1358
    :cond_c
    iget-object v6, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    add-int/lit8 v17, v14, -0x1

    aget v6, v6, v17

    add-int/2addr v6, v1

    :goto_5
    aput v6, v15, v14

    .line 1359
    iget-object v6, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v6, v6, v14

    add-int/2addr v2, v6

    .line 1324
    .end local v1    # "intReadValue":I
    .end local v11    # "readValue":J
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x2

    const/16 v6, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1351
    .restart local v11    # "readValue":J
    :cond_d
    const-string v1, "EBML lacing sample size out of range."

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1328
    .end local v11    # "readValue":J
    :cond_e
    const-string v1, "No valid varint length mask found"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1361
    .end local v14    # "sampleIndex":I
    :cond_f
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    iget v6, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v6, v9, v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    aput v6, v0, v1

    .line 1363
    .end local v2    # "totalSamplesSize":I
    .end local v4    # "headerSize":I
    nop

    .line 1370
    :goto_6
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/2addr v0, v3

    iget-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1371
    .local v0, "timecode":I
    iget-wide v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v3, v0

    invoke-direct {v7, v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1372
    iget v1, v13, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const/16 v1, 0xa3

    if-ne v8, v1, :cond_10

    iget-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1374
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v1, 0x1

    .line 1375
    .local v1, "isKeyframe":Z
    :goto_8
    if-eqz v1, :cond_12

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    iput v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1376
    const/4 v2, 0x2

    iput v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1377
    const/4 v2, 0x0

    iput v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_a

    .line 1365
    .end local v0    # "timecode":I
    .end local v1    # "isKeyframe":Z
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1380
    .end local v5    # "lacing":I
    :cond_14
    :goto_a
    const/16 v0, 0xa3

    if-ne v8, v0, :cond_16

    .line 1383
    :goto_b
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_15

    .line 1384
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    aget v0, v0, v1

    .line 1385
    const/4 v1, 0x0

    invoke-direct {v7, v10, v13, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v11

    .line 1387
    .local v11, "sampleSize":I
    iget-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v3, v13, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v14, v0, v2

    .line 1389
    .local v14, "sampleTimeUs":J
    iget v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 1390
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    .line 1391
    .end local v11    # "sampleSize":I
    .end local v14    # "sampleTimeUs":J
    goto :goto_b

    .line 1392
    :cond_15
    const/4 v0, 0x0

    iput v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_d

    .line 1399
    :cond_16
    :goto_c
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_17

    .line 1400
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v3, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    aget v2, v2, v3

    .line 1401
    const/4 v3, 0x1

    invoke-direct {v7, v10, v13, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v2

    aput v2, v0, v1

    .line 1403
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/2addr v0, v3

    iput v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_c

    .line 1419
    .end local v13    # "track":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    :cond_17
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_6
        0x41ed -> :sswitch_5
        0x4255 -> :sswitch_4
        0x47e2 -> :sswitch_3
        0x53ab -> :sswitch_2
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_0
    .end sparse-switch
.end method

.method protected endMasterElement(I)V
    .locals 16
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 801
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    .line 802
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 822
    :sswitch_0
    iget-boolean v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v2, :cond_0

    .line 823
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v3, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    iget-object v4, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    invoke-direct {v7, v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->buildSeekMap(Landroidx/media3/common/util/LongArray;Landroidx/media3/common/util/LongArray;)Landroidx/media3/extractor/SeekMap;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 824
    iput-boolean v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    .line 828
    :cond_0
    iput-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    .line 829
    iput-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    .line 830
    goto/16 :goto_3

    .line 900
    :sswitch_1
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 905
    goto/16 :goto_3

    .line 901
    :cond_1
    const-string v0, "No valid tracks were found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 804
    :sswitch_2
    iget-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 806
    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 808
    :cond_2
    iget-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 809
    iget-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    invoke-direct {v7, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_3

    .line 880
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 881
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_d

    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 882
    :cond_3
    const-string v0, "Combining encryption and compression is not supported"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 867
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 868
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v2, :cond_d

    .line 869
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    if-eqz v2, :cond_4

    .line 873
    iget-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-instance v2, Landroidx/media3/common/DrmInitData;

    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v5, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget-object v5, v5, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string/jumbo v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v0, v8

    invoke-direct {v2, v0}, Landroidx/media3/common/DrmInitData;-><init>([Landroidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    goto/16 :goto_3

    .line 870
    :cond_4
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 813
    :sswitch_5
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget-wide v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 817
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_d

    .line 818
    iget-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    iput-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto/16 :goto_3

    .line 814
    :cond_5
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 887
    :sswitch_6
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 888
    .local v0, "currentTrack":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 892
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 893
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Landroidx/media3/extractor/ExtractorOutput;I)V

    .line 894
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    :cond_6
    iput-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 898
    goto/16 :goto_3

    .line 889
    :cond_7
    const-string v2, "CodecId is missing in TrackEntry element"

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 832
    .end local v0    # "currentTrack":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    :sswitch_7
    iget v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 834
    return-void

    .line 836
    :cond_8
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 837
    .local v9, "track":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    invoke-static {v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$100(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 838
    iget-wide v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    const-string v0, "A_OPUS"

    iget-object v1, v9, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 840
    iget-object v0, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    .line 841
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 842
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 843
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 844
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 840
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 848
    :cond_9
    const/4 v0, 0x0

    .line 849
    .local v0, "sampleOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v1, v2, :cond_a

    .line 850
    iget-object v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v1    # "i":I
    :cond_a
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i":I
    :goto_1
    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v10, v1, :cond_c

    .line 853
    iget-wide v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, v9, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v3, v10

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v11, v1, v3

    .line 854
    .local v11, "sampleTimeUs":J
    iget v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 855
    .local v1, "sampleFlags":I
    if-nez v10, :cond_b

    iget-boolean v2, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v2, :cond_b

    .line 858
    or-int/lit8 v1, v1, 0x1

    move v13, v1

    goto :goto_2

    .line 860
    :cond_b
    move v13, v1

    .end local v1    # "sampleFlags":I
    .local v13, "sampleFlags":I
    :goto_2
    iget-object v1, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v14, v1, v10

    .line 861
    .local v14, "sampleSize":I
    sub-int v15, v0, v14

    .line 862
    .end local v0    # "sampleOffset":I
    .local v15, "sampleOffset":I
    move-object/from16 v0, p0

    move-object v1, v9

    move-wide v2, v11

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 852
    .end local v11    # "sampleTimeUs":J
    .end local v13    # "sampleFlags":I
    .end local v14    # "sampleSize":I
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    goto :goto_1

    .line 864
    .end local v10    # "i":I
    .end local v15    # "sampleOffset":I
    .restart local v0    # "sampleOffset":I
    :cond_c
    iput v8, v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 865
    nop

    .line 909
    .end local v0    # "sampleOffset":I
    .end local v9    # "track":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    :cond_d
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_7
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_5
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_3
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_1
        0x1c53bb6b -> :sswitch_0
    .end sparse-switch
.end method

.method protected floatElement(ID)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1143
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1187
    :sswitch_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 1188
    goto/16 :goto_0

    .line 1184
    :sswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1185
    goto :goto_0

    .line 1181
    :sswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1182
    goto :goto_0

    .line 1178
    :sswitch_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 1179
    goto :goto_0

    .line 1175
    :sswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1176
    goto :goto_0

    .line 1172
    :sswitch_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1173
    goto :goto_0

    .line 1169
    :sswitch_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1170
    goto :goto_0

    .line 1166
    :sswitch_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1167
    goto :goto_0

    .line 1163
    :sswitch_8
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1164
    goto :goto_0

    .line 1160
    :sswitch_9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1161
    goto :goto_0

    .line 1157
    :sswitch_a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1158
    goto :goto_0

    .line 1154
    :sswitch_b
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1155
    goto :goto_0

    .line 1151
    :sswitch_c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1152
    goto :goto_0

    .line 1145
    :sswitch_d
    double-to-long v0, p2

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 1146
    goto :goto_0

    .line 1148
    :sswitch_e
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1149
    nop

    .line 1192
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_e
        0x4489 -> :sswitch_d
        0x55d1 -> :sswitch_c
        0x55d2 -> :sswitch_b
        0x55d3 -> :sswitch_a
        0x55d4 -> :sswitch_9
        0x55d5 -> :sswitch_8
        0x55d6 -> :sswitch_7
        0x55d7 -> :sswitch_6
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_4
        0x55da -> :sswitch_3
        0x7673 -> :sswitch_2
        0x7674 -> :sswitch_1
        0x7675 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .locals 1
    .param p1, "currentElementId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1468
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1469
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    return-object v0
.end method

.method protected getElementType(I)I
    .locals 1
    .param p1, "id"    # I

    .line 616
    sparse-switch p1, :sswitch_data_0

    .line 716
    const/4 v0, 0x0

    return v0

    .line 714
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 698
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 642
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 688
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 683
    :sswitch_4
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleBlockAddIDExtraData(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Landroidx/media3/extractor/ExtractorInput;I)V
    .locals 2
    .param p1, "track"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p3, "contentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    invoke-static {p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$200(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_1

    .line 1424
    invoke-static {p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$200(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1429
    :cond_0
    invoke-interface {p2, p3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    .line 1425
    :cond_1
    :goto_0
    new-array v0, p3, [B

    iput-object v0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    .line 1426
    iget-object v0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1431
    :goto_1
    return-void
.end method

.method protected handleBlockAdditionalData(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;ILandroidx/media3/extractor/ExtractorInput;I)V
    .locals 2
    .param p1, "track"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "blockAdditionalId"    # I
    .param p3, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p4, "contentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1437
    const-string v1, "V_VP9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1439
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 1442
    :cond_0
    invoke-interface {p3, p4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1444
    :goto_0
    return-void
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 564
    nop

    .line 565
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    .line 567
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 568
    return-void
.end method

.method protected integerElement(IJ)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 918
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const-string v7, " not supported"

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 939
    :sswitch_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 940
    goto/16 :goto_0

    .line 969
    :sswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    .line 970
    goto/16 :goto_0

    .line 1110
    :sswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1111
    long-to-int v1, p2

    packed-switch v1, :pswitch_data_0

    .line 1125
    goto/16 :goto_0

    .line 1122
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1123
    goto/16 :goto_0

    .line 1119
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1120
    goto/16 :goto_0

    .line 1116
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1117
    goto/16 :goto_0

    .line 1113
    :pswitch_3
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1114
    goto/16 :goto_0

    .line 984
    :sswitch_3
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 985
    goto/16 :goto_0

    .line 990
    :sswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 991
    goto/16 :goto_0

    .line 981
    :sswitch_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-wide p2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 982
    goto/16 :goto_0

    .line 978
    :sswitch_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-wide p2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 979
    goto/16 :goto_0

    .line 972
    :sswitch_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    .line 973
    goto/16 :goto_0

    .line 1107
    :sswitch_8
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 1108
    goto/16 :goto_0

    .line 1104
    :sswitch_9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 1105
    goto/16 :goto_0

    .line 1071
    :sswitch_a
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1072
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1073
    long-to-int v0, p2

    invoke-static {v0}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v0

    .line 1074
    .local v0, "colorSpace":I
    if-eq v0, v1, :cond_9

    .line 1075
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    .line 1079
    .end local v0    # "colorSpace":I
    :sswitch_b
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1080
    long-to-int v0, p2

    invoke-static {v0}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v0

    .line 1081
    .local v0, "colorTransfer":I
    if-eq v0, v1, :cond_9

    .line 1082
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    .line 1091
    .end local v0    # "colorTransfer":I
    :sswitch_c
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1092
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_1

    .line 1100
    goto/16 :goto_0

    .line 1097
    :pswitch_4
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1098
    goto/16 :goto_0

    .line 1094
    :pswitch_5
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1095
    goto/16 :goto_0

    .line 1086
    :sswitch_d
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1087
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1088
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 1089
    goto/16 :goto_0

    .line 963
    :sswitch_e
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    move v3, v8

    :cond_0
    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    .line 964
    goto/16 :goto_0

    .line 951
    :sswitch_f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 952
    goto/16 :goto_0

    .line 954
    :sswitch_10
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 955
    goto/16 :goto_0

    .line 948
    :sswitch_11
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 949
    goto/16 :goto_0

    .line 1051
    :sswitch_12
    long-to-int v1, p2

    .line 1052
    .local v1, "layout":I
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1053
    sparse-switch v1, :sswitch_data_1

    .line 1067
    goto/16 :goto_0

    .line 1064
    :sswitch_13
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1065
    goto/16 :goto_0

    .line 1061
    :sswitch_14
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1062
    goto/16 :goto_0

    .line 1058
    :sswitch_15
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1059
    goto/16 :goto_0

    .line 1055
    :sswitch_16
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1056
    goto/16 :goto_0

    .line 936
    .end local v1    # "layout":I
    :sswitch_17
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 937
    goto/16 :goto_0

    .line 1004
    :sswitch_18
    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1005
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 997
    :sswitch_19
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 998
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1025
    :sswitch_1a
    cmp-long v0, p2, v4

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 1026
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1018
    :sswitch_1b
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 1019
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 921
    :sswitch_1c
    cmp-long v0, p2, v4

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 922
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 928
    :sswitch_1d
    cmp-long v0, p2, v4

    if-ltz v0, :cond_6

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-gtz v0, :cond_6

    goto/16 :goto_0

    .line 929
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1011
    :sswitch_1e
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 1012
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 975
    :sswitch_1f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    invoke-static {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$202(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;I)I

    .line 976
    goto/16 :goto_0

    .line 993
    :sswitch_20
    iput-boolean v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    .line 994
    goto :goto_0

    .line 1035
    :sswitch_21
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_9

    .line 1036
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 1040
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 1041
    iput-boolean v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    .line 1129
    :sswitch_22
    long-to-int v0, p2

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1130
    goto :goto_0

    .line 1045
    :sswitch_23
    invoke-direct {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 1046
    goto :goto_0

    .line 957
    :sswitch_24
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    .line 958
    goto :goto_0

    .line 945
    :sswitch_25
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 946
    goto :goto_0

    .line 1031
    :sswitch_26
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 1032
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-direct {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 1033
    goto :goto_0

    .line 942
    :sswitch_27
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 943
    goto :goto_0

    .line 987
    :sswitch_28
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 988
    goto :goto_0

    .line 1048
    :sswitch_29
    invoke-direct {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1049
    goto :goto_0

    .line 960
    :sswitch_2a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    cmp-long v1, p2, v4

    if-nez v1, :cond_8

    move v3, v8

    :cond_8
    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 961
    goto :goto_0

    .line 966
    :sswitch_2b
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    .line 967
    nop

    .line 1134
    :cond_9
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_2b
        0x88 -> :sswitch_2a
        0x9b -> :sswitch_29
        0x9f -> :sswitch_28
        0xb0 -> :sswitch_27
        0xb3 -> :sswitch_26
        0xba -> :sswitch_25
        0xd7 -> :sswitch_24
        0xe7 -> :sswitch_23
        0xee -> :sswitch_22
        0xf1 -> :sswitch_21
        0xfb -> :sswitch_20
        0x41e7 -> :sswitch_1f
        0x4254 -> :sswitch_1e
        0x4285 -> :sswitch_1d
        0x42f7 -> :sswitch_1c
        0x47e1 -> :sswitch_1b
        0x47e8 -> :sswitch_1a
        0x5031 -> :sswitch_19
        0x5032 -> :sswitch_18
        0x53ac -> :sswitch_17
        0x53b8 -> :sswitch_12
        0x54b0 -> :sswitch_11
        0x54b2 -> :sswitch_10
        0x54ba -> :sswitch_f
        0x55aa -> :sswitch_e
        0x55b2 -> :sswitch_d
        0x55b9 -> :sswitch_c
        0x55ba -> :sswitch_b
        0x55bb -> :sswitch_a
        0x55bc -> :sswitch_9
        0x55bd -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_16
        0x1 -> :sswitch_15
        0x3 -> :sswitch_14
        0xf -> :sswitch_13
    .end sparse-switch
.end method

.method protected isLevel1Element(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 727
    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

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

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    .line 591
    const/4 v1, 0x1

    .line 592
    .local v1, "continueReading":Z
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v2, :cond_1

    .line 593
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Landroidx/media3/extractor/mkv/EbmlReader;->read(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    .line 594
    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Landroidx/media3/extractor/PositionHolder;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    const/4 v0, 0x1

    return v0

    .line 598
    :cond_1
    if-nez v1, :cond_3

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 600
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 601
    .local v2, "track":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    invoke-static {v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$100(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 602
    invoke-virtual {v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    .line 599
    .end local v2    # "track":Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 606
    :cond_3
    return v0
.end method

.method public final release()V
    .locals 0

    .line 586
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 573
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 575
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/EbmlReader;

    invoke-interface {v0}, Landroidx/media3/extractor/mkv/EbmlReader;->reset()V

    .line 576
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/VarintReader;->reset()V

    .line 577
    invoke-direct {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 579
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->reset()V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method protected startMasterElement(IJJ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "contentPosition"    # J
    .param p4, "contentSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 738
    invoke-direct {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    .line 739
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 760
    :sswitch_0
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_3

    .line 762
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 764
    iput-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_1

    .line 768
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v1, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 769
    iput-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_1

    .line 753
    :sswitch_1
    new-instance v0, Landroidx/media3/common/util/LongArray;

    invoke-direct {v0}, Landroidx/media3/common/util/LongArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    .line 754
    new-instance v0, Landroidx/media3/common/util/LongArray;

    invoke-direct {v0}, Landroidx/media3/common/util/LongArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    .line 755
    goto :goto_1

    .line 741
    :sswitch_2
    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 742
    :cond_1
    const-string v0, "Multiple Segment elements not supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 745
    :cond_2
    :goto_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 746
    iput-wide p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    .line 747
    goto :goto_1

    .line 779
    :sswitch_3
    goto :goto_1

    .line 787
    :sswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 788
    goto :goto_1

    .line 781
    :sswitch_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    .line 782
    goto :goto_1

    .line 749
    :sswitch_6
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 750
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 751
    goto :goto_1

    .line 757
    :sswitch_7
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    .line 758
    goto :goto_1

    .line 784
    :sswitch_8
    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 785
    goto :goto_1

    .line 774
    :sswitch_9
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    .line 775
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 776
    nop

    .line 792
    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_9
        0xae -> :sswitch_8
        0xbb -> :sswitch_7
        0x4dbb -> :sswitch_6
        0x5035 -> :sswitch_5
        0x55d0 -> :sswitch_4
        0x6240 -> :sswitch_3
        0x18538067 -> :sswitch_2
        0x1c53bb6b -> :sswitch_1
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method protected stringElement(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1201
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1216
    :sswitch_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->access$302(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    .line 1217
    goto :goto_0

    .line 1210
    :sswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-object p2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1211
    goto :goto_0

    .line 1204
    :sswitch_2
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1213
    :sswitch_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-object p2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1214
    nop

    .line 1221
    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x536e -> :sswitch_1
        0x22b59c -> :sswitch_0
    .end sparse-switch
.end method
