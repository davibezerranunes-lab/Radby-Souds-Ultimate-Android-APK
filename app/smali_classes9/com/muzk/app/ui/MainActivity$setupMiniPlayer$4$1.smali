.class final Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.muzk.app.ui.MainActivity$setupMiniPlayer$4$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x6b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/MainActivity;Lcom/muzk/app/databinding/ViewMiniPlayerBinding;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/MainActivity;",
            "Lcom/muzk/app/databinding/ViewMiniPlayerBinding;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    iput-object p2, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->$mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;

    iget-object v1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    iget-object v2, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->$mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    invoke-direct {v0, v1, v2, p2}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;-><init>(Lcom/muzk/app/ui/MainActivity;Lcom/muzk/app/databinding/ViewMiniPlayerBinding;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v1, "lastCover":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    invoke-static {v2}, Lcom/muzk/app/ui/MainActivity;->access$getPlayer(Lcom/muzk/app/ui/MainActivity;)Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/playback/PlayerViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    new-instance v3, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;

    iget-object v4, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    iget-object v5, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->$mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    invoke-direct {v3, v4, v1, v5}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;-><init>(Lcom/muzk/app/ui/MainActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/muzk/app/databinding/ViewMiniPlayerBinding;)V

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->label:I

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/StateFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastCover":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-ne v1, v0, :cond_0

    .line 105
    return-object v0

    .line 107
    :cond_0
    :goto_0
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
