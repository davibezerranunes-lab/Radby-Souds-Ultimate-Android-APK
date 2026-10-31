.class final synthetic Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$tiles$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "HomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/home/HomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/muzk/app/ui/home/HomeTile;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/muzk/app/ui/home/HomeFragment;

    const-string v5, "openTile(Lcom/muzk/app/ui/home/HomeTile;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "openTile"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/home/HomeTile;

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$tiles$1;->invoke(Lcom/muzk/app/ui/home/HomeTile;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/muzk/app/ui/home/HomeTile;)V
    .locals 1
    .param p1, "p0"    # Lcom/muzk/app/ui/home/HomeTile;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$tiles$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v0, p1}, Lcom/muzk/app/ui/home/HomeFragment;->access$openTile(Lcom/muzk/app/ui/home/HomeFragment;Lcom/muzk/app/ui/home/HomeTile;)V

    return-void
.end method
