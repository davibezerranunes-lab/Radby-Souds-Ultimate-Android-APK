.class public final Landroidx/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessibilityChannel:I

.field private auxiliaryTrackType:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private colorInfo:Landroidx/media3/common/ColorInfo;

.field private containerMimeType:Ljava/lang/String;

.field private cryptoType:I

.field private cueReplacementBehavior:I

.field private customData:Ljava/lang/Object;

.field private drmInitData:Landroidx/media3/common/DrmInitData;

.field private encoderDelay:I

.field private encoderPadding:I

.field private frameRate:F

.field private hasPrerollSamples:Z

.field private height:I

.field private id:Ljava/lang/String;

.field private initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private maxInputSize:I

.field private maxNumReorderSamples:I

.field private metadata:Landroidx/media3/common/Metadata;

.field private pcmEncoding:I

.field private peakBitrate:I

.field private pixelWidthHeightRatio:F

.field private projectionData:[B

.field private roleFlags:I

.field private rotationDegrees:I

.field private sampleMimeType:Ljava/lang/String;

.field private sampleRate:I

.field private selectionFlags:I

.field private stereoMode:I

.field private subsampleOffsetUs:J

.field private tileCountHorizontal:I

.field private tileCountVertical:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 209
    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 211
    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 212
    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 213
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 215
    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 216
    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 217
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 218
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 219
    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 221
    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 222
    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 223
    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 225
    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 226
    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 228
    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 229
    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 232
    iput v0, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    .line 233
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iget-object v0, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 244
    iget-object v0, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 245
    iget v0, p1, Landroidx/media3/common/Format;->selectionFlags:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    .line 246
    iget v0, p1, Landroidx/media3/common/Format;->roleFlags:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    .line 247
    iget v0, p1, Landroidx/media3/common/Format;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 248
    iget v0, p1, Landroidx/media3/common/Format;->peakBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 249
    iget-object v0, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    .line 251
    iget-object v0, p1, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    .line 253
    iget-object v0, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 255
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 256
    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 257
    iget v0, p1, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 258
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 259
    iget-object v0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 260
    iget-wide v0, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 261
    iget-boolean v0, p1, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    iput-boolean v0, p0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    .line 263
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 264
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 265
    iget v0, p1, Landroidx/media3/common/Format;->frameRate:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 266
    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    .line 267
    iget v0, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 268
    iget-object v0, p1, Landroidx/media3/common/Format;->projectionData:[B

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    .line 269
    iget v0, p1, Landroidx/media3/common/Format;->stereoMode:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 270
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 272
    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 273
    iget v0, p1, Landroidx/media3/common/Format;->sampleRate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 274
    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 275
    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    .line 276
    iget v0, p1, Landroidx/media3/common/Format;->encoderPadding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    .line 278
    iget v0, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 279
    iget v0, p1, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 281
    iget v0, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 282
    iget v0, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 284
    iget v0, p1, Landroidx/media3/common/Format;->cryptoType:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/Format;
    .param p2, "x1"    # Landroidx/media3/common/Format$1;

    .line 143
    invoke-direct {p0, p1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/media3/common/Format$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    return v0
.end method

.method static synthetic access$1600(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    return v0
.end method

.method static synthetic access$1700(Landroidx/media3/common/Format$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/media3/common/Format$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-wide v0, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroidx/media3/common/Format$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-boolean v0, p0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    return v0
.end method

.method static synthetic access$2100(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    return v0
.end method

.method static synthetic access$2200(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    return v0
.end method

.method static synthetic access$2300(Landroidx/media3/common/Format$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    return v0
.end method

.method static synthetic access$2400(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    return v0
.end method

.method static synthetic access$2500(Landroidx/media3/common/Format$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    return v0
.end method

.method static synthetic access$2600(Landroidx/media3/common/Format$Builder;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    return-object v0
.end method

.method static synthetic access$2700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    return v0
.end method

.method static synthetic access$2800(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    return-object v0
.end method

.method static synthetic access$2900(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    return v0
.end method

.method static synthetic access$300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    return v0
.end method

.method static synthetic access$3100(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    return v0
.end method

.method static synthetic access$3200(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    return v0
.end method

.method static synthetic access$3300(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    return v0
.end method

.method static synthetic access$3400(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    return v0
.end method

.method static synthetic access$3500(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    return v0
.end method

.method static synthetic access$3600(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    return v0
.end method

.method static synthetic access$3700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    return v0
.end method

.method static synthetic access$3800(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    return v0
.end method

.method static synthetic access$700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 143
    iget v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/Format;
    .locals 2

    .line 791
    new-instance v0, Landroidx/media3/common/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V

    return-object v0
.end method

.method public setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "accessibilityChannel"    # I

    .line 731
    iput p1, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 732
    return-object p0
.end method

.method public setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "auxiliaryTrackType"    # I

    .line 393
    iput p1, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    .line 394
    return-object p0
.end method

.method public setAverageBitrate(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "averageBitrate"    # I

    .line 405
    iput p1, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 406
    return-object p0
.end method

.method public setChannelCount(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "channelCount"    # I

    .line 669
    iput p1, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 670
    return-object p0
.end method

.method public setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "codecs"    # Ljava/lang/String;

    .line 429
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "colorInfo"    # Landroidx/media3/common/ColorInfo;

    .line 655
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 656
    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 1
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 471
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public setCryptoType(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "cryptoType"    # I

    .line 784
    iput p1, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 785
    return-object p0
.end method

.method public setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "cueReplacementBehavior"    # I

    .line 744
    iput p1, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 745
    return-object p0
.end method

.method public setCustomData(Ljava/lang/Object;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "customData"    # Ljava/lang/Object;

    .line 457
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    .line 458
    return-object p0
.end method

.method public setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 533
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 534
    return-object p0
.end method

.method public setEncoderDelay(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "encoderDelay"    # I

    .line 705
    iput p1, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    .line 706
    return-object p0
.end method

.method public setEncoderPadding(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "encoderPadding"    # I

    .line 717
    iput p1, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    .line 718
    return-object p0
.end method

.method public setFrameRate(F)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "frameRate"    # F

    .line 595
    iput p1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 596
    return-object p0
.end method

.method public setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "hasPrerollSamples"    # Z

    .line 557
    iput-boolean p1, p0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    .line 558
    return-object p0
.end method

.method public setHeight(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "height"    # I

    .line 583
    iput p1, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 584
    return-object p0
.end method

.method public setId(I)Landroidx/media3/common/Format$Builder;
    .locals 1
    .param p1, "id"    # I

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 295
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroidx/media3/common/Format$Builder;"
        }
    .end annotation

    .line 521
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 522
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 323
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;)",
            "Landroidx/media3/common/Format$Builder;"
        }
    .end annotation

    .line 338
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Label;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 339
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 350
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public setMaxInputSize(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "maxInputSize"    # I

    .line 497
    iput p1, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 498
    return-object p0
.end method

.method public setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "maxNumReorderSamples"    # I

    .line 509
    iput p1, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 510
    return-object p0
.end method

.method public setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 441
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    .line 442
    return-object p0
.end method

.method public setPcmEncoding(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "pcmEncoding"    # I

    .line 693
    iput p1, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 694
    return-object p0
.end method

.method public setPeakBitrate(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "peakBitrate"    # I

    .line 417
    iput p1, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 418
    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "pixelWidthHeightRatio"    # F

    .line 619
    iput p1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 620
    return-object p0
.end method

.method public setProjectionData([B)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "projectionData"    # [B

    .line 631
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    .line 632
    return-object p0
.end method

.method public setRoleFlags(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "roleFlags"    # I

    .line 377
    iput p1, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    .line 378
    return-object p0
.end method

.method public setRotationDegrees(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "rotationDegrees"    # I

    .line 607
    iput p1, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    .line 608
    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 1
    .param p1, "sampleMimeType"    # Ljava/lang/String;

    .line 485
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 486
    return-object p0
.end method

.method public setSampleRate(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "sampleRate"    # I

    .line 681
    iput p1, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 682
    return-object p0
.end method

.method public setSelectionFlags(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "selectionFlags"    # I

    .line 362
    iput p1, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    .line 363
    return-object p0
.end method

.method public setStereoMode(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "stereoMode"    # I

    .line 643
    iput p1, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 644
    return-object p0
.end method

.method public setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "subsampleOffsetUs"    # J

    .line 545
    iput-wide p1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 546
    return-object p0
.end method

.method public setTileCountHorizontal(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "tileCountHorizontal"    # I

    .line 758
    iput p1, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 759
    return-object p0
.end method

.method public setTileCountVertical(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "tileCountVertical"    # I

    .line 770
    iput p1, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 771
    return-object p0
.end method

.method public setWidth(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "width"    # I

    .line 571
    iput p1, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 572
    return-object p0
.end method
