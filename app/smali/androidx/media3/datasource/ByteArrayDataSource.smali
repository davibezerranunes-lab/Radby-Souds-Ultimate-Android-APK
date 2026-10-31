.class public final Landroidx/media3/datasource/ByteArrayDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "ByteArrayDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;
    }
.end annotation


# instance fields
.field private bytesRemaining:I

.field private data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;

.field private final uriResolver:Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;)V
    .locals 1
    .param p1, "uriResolver"    # Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 75
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uriResolver:Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 63
    new-instance v0, Landroidx/media3/datasource/ByteArrayDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/ByteArrayDataSource$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-direct {p0, v0}, Landroidx/media3/datasource/ByteArrayDataSource;-><init>(Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;)V

    .line 64
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 65
    return-void
.end method

.method static synthetic lambda$new$0([BLandroid/net/Uri;)[B
    .locals 0
    .param p0, "data"    # [B
    .param p1, "unusedUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 120
    iget-boolean v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->opened:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->opened:Z

    .line 122
    invoke-virtual {p0}, Landroidx/media3/datasource/ByteArrayDataSource;->transferEnded()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 125
    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    .line 126
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

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

    .line 80
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/ByteArrayDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 81
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 82
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uriResolver:Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    iget-object v1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;->resolve(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    .line 83
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v2, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 86
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    long-to-int v0, v0

    iput v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    .line 87
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    array-length v0, v0

    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->position:J

    long-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 88
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->opened:Z

    .line 92
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/ByteArrayDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 93
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 84
    :cond_2
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 98
    if-nez p3, :cond_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    if-nez v0, :cond_1

    .line 101
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_1
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 105
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    .line 107
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 108
    invoke-virtual {p0, p3}, Landroidx/media3/datasource/ByteArrayDataSource;->bytesTransferred(I)V

    .line 109
    return p3
.end method
