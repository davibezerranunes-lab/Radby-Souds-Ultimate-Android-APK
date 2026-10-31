.class public final Lcom/muzk/app/data/AudioCoverFetcher$Factory;
.super Ljava/lang/Object;
.source "AudioCover.kt"

# interfaces
.implements Lcoil/fetch/Fetcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/data/AudioCoverFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil/fetch/Fetcher$Factory<",
        "Lcom/muzk/app/data/AudioCover;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/muzk/app/data/AudioCoverFetcher$Factory;",
        "Lcoil/fetch/Fetcher$Factory;",
        "Lcom/muzk/app/data/AudioCover;",
        "<init>",
        "()V",
        "create",
        "Lcoil/fetch/Fetcher;",
        "data",
        "options",
        "Lcoil/request/Options;",
        "imageLoader",
        "Lcoil/ImageLoader;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;
    .locals 1
    .param p1, "data"    # Lcom/muzk/app/data/AudioCover;
    .param p2, "options"    # Lcoil/request/Options;
    .param p3, "imageLoader"    # Lcoil/ImageLoader;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/muzk/app/data/AudioCoverFetcher;

    invoke-direct {v0, p1, p2}, Lcom/muzk/app/data/AudioCoverFetcher;-><init>(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;)V

    check-cast v0, Lcoil/fetch/Fetcher;

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "options"    # Lcoil/request/Options;
    .param p3, "imageLoader"    # Lcoil/ImageLoader;

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/data/AudioCover;

    invoke-virtual {p0, v0, p2, p3}, Lcom/muzk/app/data/AudioCoverFetcher$Factory;->create(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;

    move-result-object v0

    return-object v0
.end method
