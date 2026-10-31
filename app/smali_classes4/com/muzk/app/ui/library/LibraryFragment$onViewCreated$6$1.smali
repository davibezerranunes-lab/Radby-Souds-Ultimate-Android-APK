.class final Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LibraryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.muzk.app.ui.library.LibraryFragment$onViewCreated$6$1"
    f = "LibraryFragment.kt"
    i = {}
    l = {
        0x83
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/library/LibraryFragment;",
            "Lcom/muzk/app/ui/library/LibraryAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->$adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

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

    new-instance v0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->$adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

    invoke-direct {v0, v1, v2, p2}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 130
    iget v1, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->label:I

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

    .line 131
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getVm(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    new-instance v2, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;

    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->$adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

    iget-object v4, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-direct {v2, v3, v4}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryFragment;)V

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->label:I

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/StateFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 130
    return-object v0

    .line 131
    :cond_0
    :goto_0
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
