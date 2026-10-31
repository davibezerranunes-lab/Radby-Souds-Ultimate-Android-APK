.class public Landroidx/media3/datasource/MediaDataSourceAdapter;
.super Landroidx/media3/datasource/BaseDataSource;
.source "MediaDataSourceAdapter.java"


# instance fields
.field private bytesRemaining:J

.field private final mediaDataSource:Landroid/media/MediaDataSource;

.field private opened:Z

.field private position:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;Z)V
    .locals 0
    .param p1, "mediaDataSource"    # Landroid/media/MediaDataSource;
    .param p2, "isNetwork"    # Z

    .line 53
    invoke-direct {p0, p2}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 54
    iput-object p1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 121
    iget-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 123
    invoke-virtual {p0}, Landroidx/media3/datasource/MediaDataSourceAdapter;->transferEnded()V

    .line 125
    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 6
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 60
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 61
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/MediaDataSourceAdapter;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 63
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v4}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw v0

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 68
    iput-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 73
    :goto_1
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 74
    nop

    .line 75
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 78
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 79
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/MediaDataSourceAdapter;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 80
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    :goto_3
    return-wide v0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 85
    if-nez p3, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 88
    return v1

    .line 91
    :cond_1
    iget-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v11, p3

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    move v11, v0

    .line 94
    .local v11, "bytesToRead":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    iget-wide v7, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    move-object v9, p1

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaDataSource;->readAt(J[BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v0, "bytesRead":I
    nop

    .line 99
    if-ne v0, v1, :cond_3

    .line 100
    return v1

    .line 103
    :cond_3
    iget-wide v1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    int-to-long v6, v0

    add-long/2addr v1, v6

    iput-wide v1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 104
    iget-wide v1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 105
    iget-wide v1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 108
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesTransferred(I)V

    .line 109
    return v0

    .line 95
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media3/datasource/DataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method
