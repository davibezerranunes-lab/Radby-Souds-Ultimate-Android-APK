.class final Lcom/muzk/app/ui/library/LibraryViewModel$state$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LibraryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/library/LibraryViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5<",
        "Ljava/util/List<",
        "+",
        "Lcom/muzk/app/data/LocalTrack;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/muzk/app/data/Playlist;",
        ">;",
        "Lcom/muzk/app/ui/library/Nav;",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/muzk/app/ui/library/LibraryUiState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/muzk/app/ui/library/LibraryUiState;",
        "all",
        "",
        "Lcom/muzk/app/data/LocalTrack;",
        "playlists",
        "Lcom/muzk/app/data/Playlist;",
        "n",
        "Lcom/muzk/app/ui/library/Nav;",
        "sel",
        "",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.muzk.app.ui.library.LibraryViewModel$state$1"
    f = "LibraryViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/library/LibraryViewModel;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/library/LibraryViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/library/LibraryViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryViewModel$state$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->this$0:Lcom/muzk/app/ui/library/LibraryViewModel;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lcom/muzk/app/ui/library/Nav;

    check-cast p4, Ljava/util/Set;

    check-cast p5, Lkotlin/coroutines/Continuation;

    invoke-virtual/range {p0 .. p5}, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->invoke(Ljava/util/List;Ljava/util/List;Lcom/muzk/app/ui/library/Nav;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;Ljava/util/List;Lcom/muzk/app/ui/library/Nav;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;",
            "Lcom/muzk/app/ui/library/Nav;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryUiState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->this$0:Lcom/muzk/app/ui/library/LibraryViewModel;

    invoke-direct {v0, v1, p5}, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;-><init>(Lcom/muzk/app/ui/library/LibraryViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$3:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65
    iget v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p1, "$result":Ljava/lang/Object;
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "all":Ljava/util/List;
    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "playlists":Ljava/util/List;
    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/muzk/app/ui/library/Nav;

    .local v2, "n":Lcom/muzk/app/ui/library/Nav;
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    .local v3, "sel":Ljava/util/Set;
    iget-object v4, p0, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;->this$0:Lcom/muzk/app/ui/library/LibraryViewModel;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/muzk/app/ui/library/LibraryViewModel;->access$build(Lcom/muzk/app/ui/library/LibraryViewModel;Ljava/util/List;Ljava/util/List;Lcom/muzk/app/ui/library/Nav;Ljava/util/Set;)Lcom/muzk/app/ui/library/LibraryUiState;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
