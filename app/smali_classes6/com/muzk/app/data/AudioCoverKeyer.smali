.class public final Lcom/muzk/app/data/AudioCoverKeyer;
.super Ljava/lang/Object;
.source "AudioCover.kt"

# interfaces
.implements Lcoil/key/Keyer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil/key/Keyer<",
        "Lcom/muzk/app/data/AudioCover;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/muzk/app/data/AudioCoverKeyer;",
        "Lcoil/key/Keyer;",
        "Lcom/muzk/app/data/AudioCover;",
        "<init>",
        "()V",
        "key",
        "",
        "data",
        "options",
        "Lcoil/request/Options;",
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public key(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lcom/muzk/app/data/AudioCover;
    .param p2, "options"    # Lcoil/request/Options;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/muzk/app/data/AudioCover;->getUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic key(Ljava/lang/Object;Lcoil/request/Options;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "options"    # Lcoil/request/Options;

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/data/AudioCover;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/data/AudioCoverKeyer;->key(Lcom/muzk/app/data/AudioCover;Lcoil/request/Options;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
