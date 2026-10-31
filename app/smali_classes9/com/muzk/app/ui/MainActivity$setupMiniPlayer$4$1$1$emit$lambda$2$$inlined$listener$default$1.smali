.class public final Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1$emit$lambda$2$$inlined$listener$default$1;
.super Ljava/lang/Object;
.source "ImageRequest.kt"

# interfaces
.implements Lcoil/request/ImageRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->emit(Lcom/muzk/app/playback/PlayerUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$5\n+ 2 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$1\n+ 3 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$2\n+ 4 MainActivity.kt\ncom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1\n*L\n1#1,499:1\n491#2:500\n492#3:501\n117#4:502\n116#4:503\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c\u00b8\u0006\u0000"
    }
    d2 = {
        "coil/request/ImageRequest$Builder$listener$5",
        "Lcoil/request/ImageRequest$Listener;",
        "onStart",
        "",
        "request",
        "Lcoil/request/ImageRequest;",
        "onCancel",
        "onError",
        "result",
        "Lcoil/request/ErrorResult;",
        "onSuccess",
        "Lcoil/request/SuccessResult;",
        "coil-base_release"
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
.field final synthetic this$0:Lcom/muzk/app/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/muzk/app/ui/MainActivity;Lcom/muzk/app/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1$emit$lambda$2$$inlined$listener$default$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcoil/request/ImageRequest;)V
    .locals 2
    .param p1, "request"    # Lcoil/request/ImageRequest;

    .line 497
    const/4 v0, 0x0

    .local v0, "$i$a$-listener-ImageRequest$Builder$listener$2":I
    move-object v1, p1

    .line 501
    .local v1, "it":Lcoil/request/ImageRequest;
    nop

    .line 497
    .end local v0    # "$i$a$-listener-ImageRequest$Builder$listener$2":I
    .end local v1    # "it":Lcoil/request/ImageRequest;
    return-void
.end method

.method public onError(Lcoil/request/ImageRequest;Lcoil/request/ErrorResult;)V
    .locals 3
    .param p1, "request"    # Lcoil/request/ImageRequest;
    .param p2, "result"    # Lcoil/request/ErrorResult;

    .line 498
    const/4 v0, 0x0

    .line 502
    .local v0, "$i$a$-listener$default-MainActivity$setupMiniPlayer$4$1$1$1$1":I
    iget-object v1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1$emit$lambda$2$$inlined$listener$default$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/muzk/app/ui/MainActivity;->access$tintMiniPlayer(Lcom/muzk/app/ui/MainActivity;Ljava/lang/Integer;)V

    .line 498
    .end local v0    # "$i$a$-listener$default-MainActivity$setupMiniPlayer$4$1$1$1$1":I
    return-void
.end method

.method public onStart(Lcoil/request/ImageRequest;)V
    .locals 2
    .param p1, "request"    # Lcoil/request/ImageRequest;

    .line 496
    const/4 v0, 0x0

    .local v0, "$i$a$-listener-ImageRequest$Builder$listener$1":I
    move-object v1, p1

    .line 500
    .local v1, "it":Lcoil/request/ImageRequest;
    nop

    .line 496
    .end local v0    # "$i$a$-listener-ImageRequest$Builder$listener$1":I
    .end local v1    # "it":Lcoil/request/ImageRequest;
    return-void
.end method

.method public onSuccess(Lcoil/request/ImageRequest;Lcoil/request/SuccessResult;)V
    .locals 5
    .param p1, "request"    # Lcoil/request/ImageRequest;
    .param p2, "result"    # Lcoil/request/SuccessResult;

    .line 499
    move-object v0, p2

    .local v0, "r":Lcoil/request/SuccessResult;
    const/4 v1, 0x0

    .line 503
    .local v1, "$i$a$-listener$default-MainActivity$setupMiniPlayer$4$1$1$1$2":I
    iget-object v2, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1$emit$lambda$2$$inlined$listener$default$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    sget-object v3, Lcom/muzk/app/ui/CoverColors;->INSTANCE:Lcom/muzk/app/ui/CoverColors;

    invoke-virtual {v0}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/muzk/app/ui/CoverColors;->extract(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/muzk/app/ui/MainActivity;->access$tintMiniPlayer(Lcom/muzk/app/ui/MainActivity;Ljava/lang/Integer;)V

    .line 499
    .end local v0    # "r":Lcoil/request/SuccessResult;
    .end local v1    # "$i$a$-listener$default-MainActivity$setupMiniPlayer$4$1$1$1$2":I
    return-void
.end method
