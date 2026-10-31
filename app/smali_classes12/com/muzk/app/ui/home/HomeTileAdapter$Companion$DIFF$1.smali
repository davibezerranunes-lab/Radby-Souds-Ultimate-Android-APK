.class public final Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "HomeAdapters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/home/HomeTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/muzk/app/ui/home/HomeTile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/muzk/app/ui/home/HomeTile;",
        "areItemsTheSame",
        "",
        "a",
        "b",
        "areContentsTheSame",
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
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/muzk/app/ui/home/HomeTile;Lcom/muzk/app/ui/home/HomeTile;)Z
    .locals 1
    .param p1, "a"    # Lcom/muzk/app/ui/home/HomeTile;
    .param p2, "b"    # Lcom/muzk/app/ui/home/HomeTile;

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/home/HomeTile;

    move-object v1, p2

    check-cast v1, Lcom/muzk/app/ui/home/HomeTile;

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;->areContentsTheSame(Lcom/muzk/app/ui/home/HomeTile;Lcom/muzk/app/ui/home/HomeTile;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Lcom/muzk/app/ui/home/HomeTile;Lcom/muzk/app/ui/home/HomeTile;)Z
    .locals 2
    .param p1, "a"    # Lcom/muzk/app/ui/home/HomeTile;
    .param p2, "b"    # Lcom/muzk/app/ui/home/HomeTile;

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeTile;->getKind()Lcom/muzk/app/ui/home/HomeTile$Kind;

    move-result-object v0

    invoke-virtual {p2}, Lcom/muzk/app/ui/home/HomeTile;->getKind()Lcom/muzk/app/ui/home/HomeTile$Kind;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeTile;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/muzk/app/ui/home/HomeTile;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/home/HomeTile;

    move-object v1, p2

    check-cast v1, Lcom/muzk/app/ui/home/HomeTile;

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;->areItemsTheSame(Lcom/muzk/app/ui/home/HomeTile;Lcom/muzk/app/ui/home/HomeTile;)Z

    move-result v0

    return v0
.end method
