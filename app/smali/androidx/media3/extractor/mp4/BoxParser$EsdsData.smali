.class final Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EsdsData"
.end annotation


# instance fields
.field private final bitrate:J

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "initializationData"    # [B
    .param p3, "bitrate"    # J
    .param p5, "peakBitrate"    # J

    .line 2428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2429
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    .line 2430
    iput-object p2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    .line 2431
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    .line 2432
    iput-wide p5, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    .line 2433
    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2418
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2418
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2418
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2418
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    return-object v0
.end method
