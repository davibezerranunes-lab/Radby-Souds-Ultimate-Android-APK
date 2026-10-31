.class public final Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultPositionUs:J

.field private durationUs:J

.field private elapsedRealtimeEpochOffsetMs:J

.field private isDynamic:Z

.field private isPlaceholder:Z

.field private isSeekable:Z

.field private liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field private manifest:Ljava/lang/Object;

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$PeriodData;",
            ">;"
        }
    .end annotation
.end field

.field private positionInFirstPeriodUs:J

.field private presentationStartTimeMs:J

.field private tracks:Landroidx/media3/common/Tracks;

.field private uid:Ljava/lang/Object;

.field private windowStartTimeMs:J


# direct methods
.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;)V
    .locals 2
    .param p1, "mediaItemData"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1376
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->tracks:Landroidx/media3/common/Tracks;

    .line 1377
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1378
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1379
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1380
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1381
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1382
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1383
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1384
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1385
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1386
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1387
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1388
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1389
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1390
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1391
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .param p2, "x1"    # Landroidx/media3/common/SimpleBasePlayer$1;

    .line 1330
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1357
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->tracks:Landroidx/media3/common/Tracks;

    .line 1358
    sget-object v0, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1360
    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1361
    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1362
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1363
    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1364
    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1365
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1366
    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1367
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1368
    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1369
    iput-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1370
    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1371
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1372
    return-void
.end method

.method static synthetic access$5200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem$LiveConfiguration;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    return-object v0
.end method

.method static synthetic access$5300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$5400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$5500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$5800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    return-wide v0
.end method

.method static synthetic access$5900(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/Tracks;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->tracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method static synthetic access$6100(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method static synthetic access$6200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$6300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    return v0
.end method

.method static synthetic access$6500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    return v0
.end method

.method static synthetic access$6600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method static synthetic access$6700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1330
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 2

    .line 1646
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;-><init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public setDefaultPositionUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2
    .param p1, "defaultPositionUs"    # J

    .line 1565
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1566
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1567
    return-object p0
.end method

.method public setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2
    .param p1, "durationUs"    # J

    .line 1583
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1584
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1585
    return-object p0
.end method

.method public setElapsedRealtimeEpochOffsetMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "elapsedRealtimeEpochOffsetMs"    # J

    .line 1523
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1524
    return-object p0
.end method

.method public setIsDynamic(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "isDynamic"    # Z

    .line 1548
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1549
    return-object p0
.end method

.method public setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "isPlaceholder"    # Z

    .line 1613
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1614
    return-object p0
.end method

.method public setIsSeekable(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "isSeekable"    # Z

    .line 1535
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1536
    return-object p0
.end method

.method public setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "liveConfiguration"    # Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1472
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1473
    return-object p0
.end method

.method public setManifest(Ljava/lang/Object;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "manifest"    # Ljava/lang/Object;

    .line 1459
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1460
    return-object p0
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 1427
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1428
    return-object p0
.end method

.method public setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 1447
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1448
    return-object p0
.end method

.method public setPeriods(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$PeriodData;",
            ">;)",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;"
        }
    .end annotation

    .line 1630
    .local p1, "periods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$PeriodData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1631
    .local v0, "periodCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 1632
    nop

    .line 1633
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-wide v2, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1632
    :goto_1
    const-string v4, "Periods other than last need a duration"

    invoke-static {v2, v4}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1634
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 1635
    nop

    .line 1636
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-object v4, v4, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-object v5, v5, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 1635
    const-string v5, "Duplicate PeriodData UIDs in period list"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1634
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1631
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1640
    .end local v1    # "i":I
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1641
    return-object p0
.end method

.method public setPositionInFirstPeriodUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2
    .param p1, "positionInFirstPeriodUs"    # J

    .line 1598
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1599
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1600
    return-object p0
.end method

.method public setPresentationStartTimeMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "presentationStartTimeMs"    # J

    .line 1488
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1489
    return-object p0
.end method

.method public setTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 1415
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->tracks:Landroidx/media3/common/Tracks;

    .line 1416
    return-object p0
.end method

.method public setUid(Ljava/lang/Object;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1403
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1404
    return-object p0
.end method

.method public setWindowStartTimeMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0
    .param p1, "windowStartTimeMs"    # J

    .line 1505
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1506
    return-object p0
.end method
