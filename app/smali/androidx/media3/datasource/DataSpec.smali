.class public final Landroidx/media3/datasource/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSpec$Builder;,
        Landroidx/media3/datasource/DataSpec$HttpMethod;,
        Landroidx/media3/datasource/DataSpec$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_ALLOW_CACHE_FRAGMENTATION:I = 0x4

.field public static final FLAG_ALLOW_GZIP:I = 0x1

.field public static final FLAG_DONT_CACHE_IF_LENGTH_UNKNOWN:I = 0x2

.field public static final FLAG_MIGHT_NOT_USE_FULL_NETWORK_SPEED:I = 0x8

.field public static final HTTP_METHOD_GET:I = 0x1

.field public static final HTTP_METHOD_HEAD:I = 0x3

.field public static final HTTP_METHOD_POST:I = 0x2


# instance fields
.field public final absoluteStreamPosition:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final customData:Ljava/lang/Object;

.field public final flags:I

.field public final httpBody:[B

.field public final httpMethod:I

.field public final httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final uri:Landroid/net/Uri;

.field public final uriPositionOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "media3.datasource"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 421
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    .line 422
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uriPositionOffset"    # J
    .param p4, "httpMethod"    # I
    .param p5, "httpBody"    # [B
    .param p7, "position"    # J
    .param p9, "length"    # J
    .param p11, "key"    # Ljava/lang/String;
    .param p12, "flags"    # I
    .param p13, "customData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 471
    .local p6, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-wide v1, p2

    move-object/from16 v3, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    add-long v8, v1, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-ltz v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v12

    :goto_0
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 475
    cmp-long v8, v4, v10

    if-ltz v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v12

    :goto_1
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 476
    cmp-long v8, v6, v10

    if-gtz v8, :cond_3

    const-wide/16 v10, -0x1

    cmp-long v8, v6, v10

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v9, v12

    :cond_3
    :goto_2
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 477
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 478
    iput-wide v1, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    .line 479
    move/from16 v8, p4

    iput v8, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    .line 480
    if-eqz v3, :cond_4

    array-length v9, v3

    if-eqz v9, :cond_4

    move-object v9, v3

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    iput-object v9, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    .line 481
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v10, p6

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 482
    iput-wide v4, v0, Landroidx/media3/datasource/DataSpec;->position:J

    .line 483
    add-long v11, v1, v4

    iput-wide v11, v0, Landroidx/media3/datasource/DataSpec;->absoluteStreamPosition:J

    .line 484
    iput-wide v6, v0, Landroidx/media3/datasource/DataSpec;->length:J

    .line 485
    move-object/from16 v9, p11

    iput-object v9, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    .line 486
    move/from16 v11, p12

    iput v11, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    .line 487
    move-object/from16 v12, p13

    iput-object v12, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    .line 488
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Landroidx/media3/datasource/DataSpec$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # [B
    .param p6, "x4"    # Ljava/util/Map;
    .param p7, "x5"    # J
    .param p9, "x6"    # J
    .param p11, "x7"    # Ljava/lang/String;
    .param p12, "x8"    # I
    .param p13, "x9"    # Ljava/lang/Object;
    .param p14, "x10"    # Landroidx/media3/datasource/DataSpec$1;

    .line 39
    invoke-direct/range {p0 .. p13}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJ)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .line 433
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .param p6, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    nop

    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 447
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v13}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 458
    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .locals 1
    .param p0, "httpMethod"    # I

    .line 318
    packed-switch p0, :pswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 324
    :pswitch_0
    const-string v0, "HEAD"

    return-object v0

    .line 322
    :pswitch_1
    const-string v0, "POST"

    return-object v0

    .line 320
    :pswitch_2
    const-string v0, "GET"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/datasource/DataSpec$Builder;
    .locals 2

    .line 509
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/DataSpec$Builder;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec$1;)V

    return-object v0
.end method

.method public final getHttpMethodString()Ljava/lang/String;
    .locals 1

    .line 504
    iget v0, p0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    invoke-static {v0}, Landroidx/media3/datasource/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 496
    iget v0, p0, Landroidx/media3/datasource/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public subrange(J)Landroidx/media3/datasource/DataSpec;
    .locals 4
    .param p1, "offset"    # J

    .line 520
    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->length:J

    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/media3/datasource/DataSpec;->subrange(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    return-object v0
.end method

.method public subrange(JJ)Landroidx/media3/datasource/DataSpec;
    .locals 17
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 531
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-wide v1, v0, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    .line 532
    return-object v0

    .line 534
    :cond_0
    new-instance v1, Landroidx/media3/datasource/DataSpec;

    iget-object v4, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v7, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v8, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-object v9, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v2, v0, Landroidx/media3/datasource/DataSpec;->position:J

    add-long v10, v2, p1

    iget-object v14, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v15, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget-object v2, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    move-object v3, v1

    move-wide/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/datasource/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    return-object v0
.end method

.method public withAdditionalHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DataSpec;"
        }
    .end annotation

    .line 598
    .local p1, "additionalHttpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 599
    .local v1, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 600
    new-instance v17, Landroidx/media3/datasource/DataSpec;

    iget-object v4, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v7, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v8, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-wide v10, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v12, v0, Landroidx/media3/datasource/DataSpec;->length:J

    iget-object v14, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v15, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget-object v9, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    move-object/from16 v3, v17

    move-object/from16 v16, v9

    move-object v9, v1

    invoke-direct/range {v3 .. v16}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v17
.end method

.method public withRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DataSpec;"
        }
    .end annotation

    .line 576
    .local p1, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    new-instance v15, Landroidx/media3/datasource/DataSpec;

    iget-object v2, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v3, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v5, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v6, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-wide v8, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v10, v0, Landroidx/media3/datasource/DataSpec;->length:J

    iget-object v12, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v13, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget-object v14, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    move-object v1, v15

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v14}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15
.end method

.method public withUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;

    .line 555
    move-object/from16 v0, p0

    new-instance v15, Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v0, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v5, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v6, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-object v7, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v8, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v10, v0, Landroidx/media3/datasource/DataSpec;->length:J

    iget-object v12, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v13, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget-object v14, v0, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15
.end method
