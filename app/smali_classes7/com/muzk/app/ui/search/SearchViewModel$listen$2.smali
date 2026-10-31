.class final Lcom/muzk/app/ui/search/SearchViewModel$listen$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/search/SearchViewModel;->listen(Lcom/muzk/app/data/RemoteTrack;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchViewModel.kt\ncom/muzk/app/ui/search/SearchViewModel$listen$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,99:1\n1#2:100\n230#3,5:101\n*S KotlinDebug\n*F\n+ 1 SearchViewModel.kt\ncom/muzk/app/ui/search/SearchViewModel$listen$2\n*L\n81#1:101,5\n*E\n"
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
    c = "com.muzk.app.ui.search.SearchViewModel$listen$2"
    f = "SearchViewModel.kt"
    i = {}
    l = {
        0x4e,
        0x4f,
        0x50
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $track:Lcom/muzk/app/data/RemoteTrack;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/search/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/search/SearchViewModel;Lcom/muzk/app/data/RemoteTrack;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/search/SearchViewModel;",
            "Lcom/muzk/app/data/RemoteTrack;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/search/SearchViewModel$listen$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    iput-object p2, p0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->$track:Lcom/muzk/app/data/RemoteTrack;

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

    new-instance v0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;

    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->$track:Lcom/muzk/app/data/RemoteTrack;

    invoke-direct {v0, v1, v2, p2}, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;-><init>(Lcom/muzk/app/ui/search/SearchViewModel;Lcom/muzk/app/data/RemoteTrack;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 77
    iget v0, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p1

    .local v0, "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$a$-onFailure-SearchViewModel$listen$2$3":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$a$-onFailure-SearchViewModel$listen$2$3":I
    :pswitch_1
    move-object/from16 v0, p1

    .restart local v0    # "$result":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "$i$a$-onSuccess-SearchViewModel$listen$2$2":I
    iget-object v4, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "$i$a$-onSuccess-SearchViewModel$listen$2$2":I
    :pswitch_2
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-SearchViewModel$listen$2$1":I
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v3

    goto :goto_0

    .end local v0    # "$i$a$-runCatching-SearchViewModel$listen$2$1":I
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v0, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 78
    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->$track:Lcom/muzk/app/data/RemoteTrack;

    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 100
    const/4 v0, 0x0

    .line 78
    .local v0, "$i$a$-runCatching-SearchViewModel$listen$2$1":I
    sget-object v5, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-virtual {v4}, Lcom/muzk/app/data/RemoteTrack;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    iput v6, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->label:I

    invoke-virtual {v5, v4, v1}, Lcom/muzk/app/data/YtDlpRepository;->streamUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_0

    .line 77
    return-object v2

    .line 78
    :cond_0
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast v3, Ljava/lang/String;

    .end local v0    # "$i$a$-runCatching-SearchViewModel$listen$2$1":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    :goto_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    move-object v0, v3

    .line 79
    .end local v3    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_2
    iget-object v3, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    iget-object v5, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->$track:Lcom/muzk/app/data/RemoteTrack;

    invoke-static {v4}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 79
    .local v7, "$i$a$-onSuccess-SearchViewModel$listen$2$2":I
    invoke-static {v3}, Lcom/muzk/app/ui/search/SearchViewModel;->access$get_events$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v3

    new-instance v8, Lcom/muzk/app/ui/search/SearchEvent$Play;

    invoke-direct {v8, v5, v6}, Lcom/muzk/app/ui/search/SearchEvent$Play;-><init>(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->L$0:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->label:I

    invoke-interface {v3, v8, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v6    # "it":Ljava/lang/String;
    if-ne v3, v2, :cond_1

    .line 77
    return-object v2

    .line 79
    :cond_1
    move v3, v7

    .end local v7    # "$i$a$-onSuccess-SearchViewModel$listen$2$2":I
    .local v3, "$i$a$-onSuccess-SearchViewModel$listen$2$2":I
    :goto_3
    nop

    .line 80
    .end local v3    # "$i$a$-onSuccess-SearchViewModel$listen$2$2":I
    :cond_2
    iget-object v3, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 100
    .local v5, "it":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 80
    .local v6, "$i$a$-onFailure-SearchViewModel$listen$2$3":I
    invoke-static {v3}, Lcom/muzk/app/ui/search/SearchViewModel;->access$get_events$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v7

    new-instance v8, Lcom/muzk/app/ui/search/SearchEvent$Message;

    invoke-static {v3, v5}, Lcom/muzk/app/ui/search/SearchViewModel;->access$shortMessage(Lcom/muzk/app/ui/search/SearchViewModel;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "N\u00e3o consegui abrir o \u00e1udio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/muzk/app/ui/search/SearchEvent$Message;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->label:I

    invoke-interface {v7, v8, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v5    # "it":Ljava/lang/Throwable;
    if-ne v3, v2, :cond_3

    .line 77
    return-object v2

    .line 80
    :cond_3
    move v2, v6

    .end local v6    # "$i$a$-onFailure-SearchViewModel$listen$2$3":I
    .restart local v2    # "$i$a$-onFailure-SearchViewModel$listen$2$3":I
    :goto_4
    nop

    .line 81
    .end local v2    # "$i$a$-onFailure-SearchViewModel$listen$2$3":I
    :cond_4
    iget-object v2, v1, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    invoke-static {v2}, Lcom/muzk/app/ui/search/SearchViewModel;->access$get_state$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v3, 0x0

    .line 101
    .local v3, "$i$f$update":I
    :cond_5
    nop

    .line 102
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 103
    .local v4, "prevValue$iv":Ljava/lang/Object;
    move-object v14, v4

    check-cast v14, Lcom/muzk/app/ui/search/SearchUiState;

    .local v14, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/4 v15, 0x0

    .line 81
    .local v15, "$i$a$-update-SearchViewModel$listen$2$4":I
    const/16 v12, 0x2f

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v14

    invoke-static/range {v5 .. v13}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v5

    .line 103
    .end local v14    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v15    # "$i$a$-update-SearchViewModel$listen$2$4":I
    nop

    .line 104
    .local v5, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    nop

    .line 82
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v4    # "prevValue$iv":Ljava/lang/Object;
    .end local v5    # "nextValue$iv":Ljava/lang/Object;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
