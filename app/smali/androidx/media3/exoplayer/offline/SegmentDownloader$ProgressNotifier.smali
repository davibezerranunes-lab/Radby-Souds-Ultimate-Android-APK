.class final Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesDownloaded:J

.field private final contentLength:J

.field private final progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

.field private segmentsDownloaded:I

.field private final totalSegments:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;JIJI)V
    .locals 0
    .param p1, "progressListener"    # Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;
    .param p2, "contentLength"    # J
    .param p4, "totalSegments"    # I
    .param p5, "bytesDownloaded"    # J
    .param p7, "segmentsDownloaded"    # I

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

    .line 537
    iput-wide p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    .line 538
    iput p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    .line 539
    iput-wide p5, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 540
    iput p7, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    .line 541
    return-void
.end method

.method private getPercentDownloaded()F
    .locals 6

    .line 555
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 556
    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    long-to-float v0, v2

    mul-float/2addr v0, v1

    iget-wide v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 557
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    if-eqz v0, :cond_1

    .line 558
    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 560
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method


# virtual methods
.method public onProgress(JJJ)V
    .locals 8
    .param p1, "requestLength"    # J
    .param p3, "bytesCached"    # J
    .param p5, "newBytesCached"    # J

    .line 545
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 546
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

    iget-wide v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v7

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;->onProgress(JJF)V

    .line 547
    return-void
.end method

.method public onSegmentDownloaded()V
    .locals 7

    .line 550
    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    .line 551
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;->onProgress(JJF)V

    .line 552
    return-void
.end method
