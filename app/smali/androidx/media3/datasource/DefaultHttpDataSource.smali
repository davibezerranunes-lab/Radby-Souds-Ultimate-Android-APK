.class public Landroidx/media3/datasource/DefaultHttpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;,
        Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesToRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final crossProtocolRedirectsForceOriginal:Z

.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final keepPostFor302Redirects:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private responseCode:I

.field private transferStarted:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I
    .param p4, "allowCrossProtocolRedirects"    # Z
    .param p5, "crossProtocolRedirectsForceOriginal"    # Z
    .param p6, "defaultRequestProperties"    # Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    .param p8, "keepPostFor302Redirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ",
            "Landroidx/media3/datasource/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 278
    .local p7, "contentTypePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 279
    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 280
    iput p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 281
    iput p3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 282
    iput-boolean p4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 283
    iput-boolean p5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    .line 284
    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    :goto_0
    iput-object p6, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 290
    iput-object p7, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 291
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 292
    iput-boolean p8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLandroidx/media3/datasource/DefaultHttpDataSource$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    .param p7, "x6"    # Lcom/google/common/base/Predicate;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Landroidx/media3/datasource/DefaultHttpDataSource$1;

    .line 64
    invoke-direct/range {p0 .. p8}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .line 792
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 794
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 799
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private handleRedirect(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;
    .locals 7
    .param p1, "originalUrl"    # Ljava/net/URL;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 666
    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_4

    .line 676
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 683
    .local v2, "url":Ljava/net/URL;
    nop

    .line 686
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "protocol":Ljava/lang/String;
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    new-instance v4, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protocol redirect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw v4

    .line 694
    :cond_1
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v4, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 695
    iget-boolean v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-eqz v4, :cond_2

    .line 707
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v4

    .line 714
    goto :goto_1

    .line 708
    :catch_0
    move-exception v4

    .line 709
    .local v4, "e":Ljava/net/MalformedURLException;
    new-instance v5, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v5, v4, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v5

    .line 696
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :cond_2
    new-instance v4, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed cross-protocol redirect ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 698
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw v4

    .line 717
    :cond_3
    :goto_1
    return-object v2

    .line 677
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 678
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v2, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v3

    .line 667
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_4
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string v3, "Null location redirect"

    invoke-direct {v2, v3, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw v2
.end method

.method private static isCompressed(Ljava/net/HttpURLConnection;)Z
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .line 802
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "contentEncoding":Ljava/lang/String;
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private makeConnection(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 25
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 514
    .local v1, "url":Ljava/net/URL;
    iget v13, v12, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    .line 515
    .local v13, "httpMethod":I
    iget-object v14, v12, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    .line 516
    .local v14, "httpBody":[B
    iget-wide v9, v12, Landroidx/media3/datasource/DataSpec;->position:J

    .line 517
    .local v9, "position":J
    iget-wide v6, v12, Landroidx/media3/datasource/DataSpec;->length:J

    .line 518
    .local v6, "length":J
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result v16

    .line 520
    .local v16, "allowGzip":Z
    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v0, :cond_0

    .line 525
    const/4 v15, 0x1

    iget-object v8, v12, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move v2, v13

    move-object v3, v14

    move-wide v4, v9

    move-wide/from16 v17, v6

    .end local v6    # "length":J
    .local v17, "length":J
    move-object/from16 v19, v8

    move/from16 v8, v16

    move-wide/from16 v20, v9

    .end local v9    # "position":J
    .local v20, "position":J
    move v9, v15

    move-object/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 520
    .end local v17    # "length":J
    .end local v20    # "position":J
    .restart local v6    # "length":J
    .restart local v9    # "position":J
    :cond_0
    move-wide/from16 v17, v6

    move-wide/from16 v20, v9

    .line 538
    .end local v6    # "length":J
    .end local v9    # "position":J
    .restart local v17    # "length":J
    .restart local v20    # "position":J
    const/4 v0, 0x0

    move-object v10, v1

    .line 539
    .end local v1    # "url":Ljava/net/URL;
    .local v0, "redirectCount":I
    .local v10, "url":Ljava/net/URL;
    :goto_0
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "redirectCount":I
    .local v9, "redirectCount":I
    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    .line 540
    iget-object v8, v12, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 541
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v13

    move-object v3, v14

    move-wide/from16 v4, v20

    move-wide/from16 v6, v17

    move-object/from16 v22, v8

    move/from16 v8, v16

    move/from16 v23, v9

    .end local v9    # "redirectCount":I
    .local v23, "redirectCount":I
    move/from16 v9, v19

    move-object/from16 v24, v10

    .end local v10    # "url":Ljava/net/URL;
    .local v24, "url":Ljava/net/URL;
    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 550
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 551
    .local v1, "responseCode":I
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "location":Ljava/lang/String;
    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    if-eq v13, v15, :cond_1

    const/4 v7, 0x3

    if-ne v13, v7, :cond_2

    :cond_1
    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v3, :cond_8

    const/16 v7, 0x133

    if-eq v1, v7, :cond_8

    const/16 v7, 0x134

    if-ne v1, v7, :cond_2

    move-object/from16 v4, v24

    goto :goto_4

    .line 561
    :cond_2
    const/4 v7, 0x2

    if-ne v13, v7, :cond_7

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_4

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v4, v24

    goto :goto_3

    .line 566
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 567
    iget-boolean v3, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-eqz v3, :cond_5

    if-ne v1, v6, :cond_5

    move v3, v15

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 569
    .local v3, "shouldKeepPost":Z
    :goto_2
    if-nez v3, :cond_6

    .line 571
    const/4 v13, 0x1

    .line 572
    const/4 v14, 0x0

    .line 574
    :cond_6
    move-object/from16 v4, v24

    .end local v24    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    invoke-direct {v11, v4, v2, v12}, Landroidx/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v3

    .line 575
    .end local v4    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    move-object v10, v3

    goto :goto_5

    .line 561
    .end local v3    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_7
    move-object/from16 v4, v24

    .line 576
    .end local v24    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_3
    return-object v0

    .line 552
    .end local v4    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_8
    move-object/from16 v4, v24

    .line 559
    .end local v24    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 560
    invoke-direct {v11, v4, v2, v12}, Landroidx/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v3

    move-object v10, v3

    .line 578
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "responseCode":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :goto_5
    move/from16 v0, v23

    goto/16 :goto_0

    .line 581
    .end local v23    # "redirectCount":I
    .restart local v9    # "redirectCount":I
    :cond_9
    move/from16 v23, v9

    .end local v9    # "redirectCount":I
    .restart local v23    # "redirectCount":I
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many redirects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v23

    .end local v23    # "redirectCount":I
    .local v3, "redirectCount":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v12, v2, v15}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v0
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "httpMethod"    # I
    .param p3, "httpBody"    # [B
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "allowGzip"    # Z
    .param p9, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    .local p10, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p3

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 611
    .local v2, "connection":Ljava/net/HttpURLConnection;
    iget v3, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 612
    iget v3, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 614
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 615
    .local v3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    if-eqz v4, :cond_0

    .line 616
    iget-object v4, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v4}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 618
    :cond_0
    iget-object v4, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v4}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 619
    move-object/from16 v4, p10

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 621
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 622
    .local v6, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .end local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 625
    :cond_1
    invoke-static/range {p4 .. p7}, Landroidx/media3/datasource/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, "rangeHeader":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 627
    const-string v6, "Range"

    invoke-virtual {v2, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_2
    iget-object v6, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 630
    const-string v6, "User-Agent"

    iget-object v7, v0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_3
    if-eqz p8, :cond_4

    const-string v6, "gzip"

    goto :goto_1

    :cond_4
    const-string v6, "identity"

    :goto_1
    const-string v7, "Accept-Encoding"

    invoke-virtual {v2, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move/from16 v6, p9

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 634
    if-eqz v1, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 635
    invoke-static {p2}, Landroidx/media3/datasource/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 637
    if-eqz v1, :cond_6

    .line 638
    array-length v7, v1

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 639
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 640
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 641
    .local v7, "os":Ljava/io/OutputStream;
    invoke-virtual {v7, p3}, Ljava/io/OutputStream;->write([B)V

    .line 642
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 643
    .end local v7    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 644
    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 646
    :goto_3
    return-object v2
.end method

.method private readInternal([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    if-nez p3, :cond_0

    .line 770
    const/4 v0, 0x0

    return v0

    .line 772
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 773
    iget-wide v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v2, v4

    .line 774
    .local v2, "bytesRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 775
    return v1

    .line 777
    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    .line 780
    .end local v2    # "bytesRemaining":J
    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 781
    .local v0, "read":I
    if-ne v0, v1, :cond_3

    .line 782
    return v1

    .line 785
    :cond_3
    iget-wide v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    .line 786
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesTransferred(I)V

    .line 787
    return v0
.end method

.method private skipFully(JLandroidx/media3/datasource/DataSpec;)V
    .locals 7
    .param p1, "bytesToSkip"    # J
    .param p3, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 730
    return-void

    .line 732
    :cond_0
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 733
    .local v2, "skipBuffer":[B
    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_3

    .line 734
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 735
    .local v3, "readLength":I
    iget-object v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 736
    .local v4, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 743
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 749
    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 750
    invoke-virtual {p0, v4}, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesTransferred(I)V

    .line 751
    .end local v3    # "readLength":I
    .end local v4    # "read":I
    goto :goto_0

    .line 744
    .restart local v3    # "readLength":I
    .restart local v4    # "read":I
    :cond_1
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, p3, v1, v6}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    throw v0

    .line 737
    :cond_2
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v5, 0x7d0

    invoke-direct {v0, v1, p3, v5, v6}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v0

    .line 752
    .end local v3    # "readLength":I
    .end local v4    # "read":I
    :cond_3
    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .locals 1

    .line 349
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clear()V

    .line 350
    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 342
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 490
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    goto :goto_0

    .line 491
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget-object v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 494
    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/datasource/DataSpec;

    const/16 v6, 0x7d0

    const/4 v7, 0x3

    invoke-direct {v4, v3, v5, v6, v7}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 501
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 502
    iget-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    if-eqz v2, :cond_1

    .line 503
    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 504
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferEnded()V

    .line 506
    :cond_1
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 507
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 508
    nop

    .line 509
    return-void

    .line 500
    :catchall_0
    move-exception v2

    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 501
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 502
    iget-boolean v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    if-eqz v3, :cond_2

    .line 503
    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 504
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferEnded()V

    .line 506
    :cond_2
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 507
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 508
    throw v2
.end method

.method public getResponseCode()I
    .locals 1

    .line 311
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    return-object v0

    .line 304
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 13
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 356
    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    .line 358
    iput-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    .line 359
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 364
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 365
    iget-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 366
    .local v3, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    .line 367
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 372
    .local v7, "responseMessage":Ljava/lang/String;
    nop

    .line 375
    iget v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const-string v5, "Content-Range"

    const/16 v6, 0xc8

    const-wide/16 v8, -0x1

    if-lt v4, v6, :cond_9

    iget v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const/16 v10, 0x12b

    if-le v4, v10, :cond_0

    goto/16 :goto_2

    .line 406
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "contentType":Ljava/lang/String;
    iget-object v10, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v10, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 409
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v4, p1}, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)V

    throw v0

    .line 415
    :cond_2
    :goto_0
    iget v10, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v10, v6, :cond_3

    iget-wide v10, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v6, v10, v0

    if-eqz v6, :cond_3

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 418
    .local v0, "bytesToSkip":J
    :cond_3
    invoke-static {v3}, Landroidx/media3/datasource/DefaultHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v6

    .line 419
    .local v6, "isCompressed":Z
    if-nez v6, :cond_6

    .line 420
    iget-wide v10, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v10, v10, v8

    if-eqz v10, :cond_4

    .line 421
    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 423
    :cond_4
    nop

    .line 425
    const-string v10, "Content-Length"

    invoke-virtual {v3, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 426
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-static {v10, v5}, Landroidx/media3/datasource/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 427
    .local v10, "contentLength":J
    nop

    .line 428
    cmp-long v5, v10, v8

    if-eqz v5, :cond_5

    sub-long v8, v10, v0

    :cond_5
    iput-wide v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    .line 429
    .end local v10    # "contentLength":J
    goto :goto_1

    .line 434
    :cond_6
    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    .line 438
    :goto_1
    const/16 v5, 0x7d0

    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 439
    if-eqz v6, :cond_7

    .line 440
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    iget-object v9, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    :cond_7
    nop

    .line 451
    iput-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 452
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 455
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->skipFully(JLandroidx/media3/datasource/DataSpec;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 467
    nop

    .line 469
    iget-wide v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    return-wide v8

    .line 456
    :catch_0
    move-exception v8

    .line 457
    .local v8, "e":Ljava/io/IOException;
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 459
    instance-of v9, v8, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v9, :cond_8

    .line 460
    move-object v2, v8

    check-cast v2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v2

    .line 462
    :cond_8
    new-instance v9, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v9, v8, p1, v5, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v9

    .line 442
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 443
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 444
    new-instance v9, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v9, v8, p1, v5, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v9

    .line 376
    .end local v0    # "bytesToSkip":J
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v6    # "isCompressed":Z
    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 377
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v6, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const/16 v10, 0x1a0

    if-ne v6, v10, :cond_b

    .line 378
    nop

    .line 379
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/datasource/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v5

    .line 380
    .local v5, "documentSize":J
    iget-wide v11, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v11, v11, v5

    if-nez v11, :cond_b

    .line 381
    iput-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 382
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 383
    iget-wide v10, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_a

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    :cond_a
    return-wide v0

    .line 387
    .end local v5    # "documentSize":J
    :cond_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 391
    .local v0, "errorStream":Ljava/io/InputStream;
    if-eqz v0, :cond_c

    :try_start_3
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    goto :goto_3

    :cond_c
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 394
    .local v1, "errorResponseBody":[B
    :goto_3
    goto :goto_4

    .line 392
    .end local v1    # "errorResponseBody":[B
    :catch_2
    move-exception v1

    .line 393
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v1, v2

    .line 395
    .local v1, "errorResponseBody":[B
    :goto_4
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 398
    iget v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v2, v10, :cond_d

    .line 399
    new-instance v2, Landroidx/media3/datasource/DataSourceException;

    const/16 v5, 0x7d8

    invoke-direct {v2, v5}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    move-object v8, v2

    goto :goto_5

    .line 400
    :cond_d
    const/4 v2, 0x0

    move-object v8, v2

    :goto_5
    nop

    .line 401
    .local v8, "cause":Ljava/io/IOException;
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v6, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    move-object v5, v2

    move-object v9, v4

    move-object v10, p1

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    throw v2

    .line 368
    .end local v0    # "errorStream":Ljava/io/InputStream;
    .end local v1    # "errorResponseBody":[B
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "responseMessage":Ljava/lang/String;
    .end local v8    # "cause":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 370
    invoke-static {v0, p1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v1

    throw v1
.end method

.method openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 476
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/datasource/DefaultHttpDataSource;->readInternal([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 479
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/DataSpec;

    .line 478
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v1

    throw v1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 334
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method
