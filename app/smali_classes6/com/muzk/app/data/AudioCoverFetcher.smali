.class public final Lcom/muzk/app/data/AudioCoverFetcher;
.super Ljava/lang/Object;
.source "AudioCover.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/data/AudioCoverFetcher$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioCover.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioCover.kt\ncom/muzk/app/data/AudioCoverFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,61:1\n1#2:62\n27#3:63\n*S KotlinDebug\n*F\n+ 1 AudioCover.kt\ncom/muzk/app/data/AudioCoverFetcher\n*L\n46#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/muzk/app/data/AudioCoverFetcher;",
        "Lcoil/fetch/Fetcher;",
        "data",
        "Lcom/muzk/app/data/AudioCover;",
        "options",
        "Lcoil/request/Options;",
        "<init>",
        "(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;)V",
        "fetch",
        "Lcoil/fetch/FetchResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Factory",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Lcom/muzk/app/data/AudioCover;

.field private final options:Lcoil/request/Options;


# direct methods
.method public constructor <init>(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;)V
    .locals 1
    .param p1, "data"    # Lcom/muzk/app/data/AudioCover;
    .param p2, "options"    # Lcoil/request/Options;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/muzk/app/data/AudioCoverFetcher;->data:Lcom/muzk/app/data/AudioCover;

    .line 24
    iput-object p2, p0, Lcom/muzk/app/data/AudioCoverFetcher;->options:Lcoil/request/Options;

    .line 22
    return-void
.end method


# virtual methods
.method public fetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/muzk/app/data/AudioCoverFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    .local v0, "ctx":Landroid/content/Context;
    nop

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 31
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/muzk/app/data/AudioCoverFetcher;

    .line 62
    .local v1, "$this$fetch_u24lambda_u240":Lcom/muzk/app/data/AudioCoverFetcher;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-runCatching-AudioCoverFetcher$fetch$bitmap$1":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v1, Lcom/muzk/app/data/AudioCoverFetcher;->data:Lcom/muzk/app/data/AudioCover;

    invoke-virtual {v5}, Lcom/muzk/app/data/AudioCover;->getUri()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x200

    invoke-direct {v6, v7, v7}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4

    .end local v1    # "$this$fetch_u24lambda_u240":Lcom/muzk/app/data/AudioCoverFetcher;
    .end local v2    # "$i$a$-runCatching-AudioCoverFetcher$fetch$bitmap$1":I
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_3

    .line 33
    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 34
    .local v1, "mmr":Landroid/media/MediaMetadataRetriever;
    nop

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/muzk/app/data/AudioCoverFetcher;->data:Lcom/muzk/app/data/AudioCover;

    invoke-virtual {v2}, Lcom/muzk/app/data/AudioCover;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 36
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    .local v2, "it":[B
    const/4 v4, 0x0

    .line 36
    .local v4, "$i$a$-let-AudioCoverFetcher$fetch$bitmap$2":I
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "it":[B
    .end local v4    # "$i$a$-let-AudioCoverFetcher$fetch$bitmap$2":I
    goto :goto_2

    .line 40
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 40
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 41
    nop

    .line 40
    nop

    .line 30
    .end local v1    # "mmr":Landroid/media/MediaMetadataRetriever;
    :goto_3
    nop

    .line 29
    if-eqz v3, :cond_3

    move-object v1, v3

    .line 45
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcoil/fetch/DrawableResult;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "getResources(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v3, "resources$iv":Landroid/content/res/Resources;
    move-object v4, v1

    .local v4, "$this$toDrawable$iv":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 63
    .local v5, "$i$f$toDrawable":I
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v3    # "resources$iv":Landroid/content/res/Resources;
    .end local v4    # "$this$toDrawable$iv":Landroid/graphics/Bitmap;
    .end local v5    # "$i$f$toDrawable":I
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 47
    nop

    .line 48
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 45
    const/4 v4, 0x1

    invoke-direct {v2, v6, v4, v3}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    return-object v2

    .line 43
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Arquivo sem capa"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
