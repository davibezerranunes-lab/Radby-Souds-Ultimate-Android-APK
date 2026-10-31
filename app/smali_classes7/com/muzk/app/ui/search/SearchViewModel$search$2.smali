.class final Lcom/muzk/app/ui/search/SearchViewModel$search$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/search/SearchViewModel;->search(Ljava/lang/String;)V
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
    value = "SMAP\nSearchViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchViewModel.kt\ncom/muzk/app/ui/search/SearchViewModel$search$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,99:1\n1#2:100\n230#3,5:101\n230#3,5:106\n*S KotlinDebug\n*F\n+ 1 SearchViewModel.kt\ncom/muzk/app/ui/search/SearchViewModel$search$2\n*L\n58#1:101,5\n60#1:106,5\n*E\n"
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
    c = "com.muzk.app.ui.search.SearchViewModel$search$2"
    f = "SearchViewModel.kt"
    i = {}
    l = {
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $q:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/search/SearchViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/muzk/app/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/muzk/app/ui/search/SearchViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/search/SearchViewModel$search$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->$q:Ljava/lang/String;

    iput-object p2, p0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

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

    new-instance v0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;

    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->$q:Ljava/lang/String;

    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/muzk/app/ui/search/SearchViewModel$search$2;-><init>(Ljava/lang/String;Lcom/muzk/app/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/search/SearchViewModel$search$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, v7, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-SearchViewModel$search$2$1":I
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    goto :goto_0

    .line 57
    .end local v0    # "$i$a$-runCatching-SearchViewModel$search$2$1":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 56
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    iget-object v1, v7, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 57
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, v7, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->$q:Ljava/lang/String;

    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 100
    const/4 v9, 0x0

    .line 57
    .local v9, "$i$a$-runCatching-SearchViewModel$search$2$1":I
    sget-object v1, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    const/4 v3, 0x1

    iput v3, v7, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Lcom/muzk/app/data/YtDlpRepository;->search$default(Lcom/muzk/app/data/YtDlpRepository;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 56
    return-object v0

    .line 57
    :cond_0
    move v0, v9

    .end local v9    # "$i$a$-runCatching-SearchViewModel$search$2$1":I
    .restart local v0    # "$i$a$-runCatching-SearchViewModel$search$2$1":I
    :goto_0
    check-cast v1, Ljava/util/List;

    .end local v0    # "$i$a$-runCatching-SearchViewModel$search$2$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v8

    .end local v8    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v1

    .line 58
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    :goto_2
    iget-object v1, v7, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 100
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .line 58
    .local v3, "$i$a$-onSuccess-SearchViewModel$search$2$2":I
    invoke-static {v1}, Lcom/muzk/app/ui/search/SearchViewModel;->access$get_state$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 101
    .local v4, "$i$f$update":I
    :cond_1
    nop

    .line 102
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 103
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/muzk/app/ui/search/SearchUiState;

    .local v6, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/16 v18, 0x0

    .line 58
    .local v18, "$i$a$-update-SearchViewModel$search$2$2$1":I
    const/16 v16, 0x39

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v6

    move-object v12, v2

    invoke-static/range {v9 .. v17}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v6

    .line 103
    .end local v6    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v18    # "$i$a$-update-SearchViewModel$search$2$2$1":I
    nop

    .line 104
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    nop

    .line 58
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 59
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "$i$a$-onSuccess-SearchViewModel$search$2$2":I
    :cond_2
    iget-object v1, v7, Lcom/muzk/app/ui/search/SearchViewModel$search$2;->this$0:Lcom/muzk/app/ui/search/SearchViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-onFailure-SearchViewModel$search$2$3":I
    invoke-static {v1}, Lcom/muzk/app/ui/search/SearchViewModel;->access$get_state$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .local v3, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 106
    .restart local v4    # "$i$f$update":I
    :cond_3
    nop

    .line 107
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 108
    .restart local v5    # "prevValue$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/muzk/app/ui/search/SearchUiState;

    .local v6, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/16 v18, 0x0

    .line 60
    .local v18, "$i$a$-update-SearchViewModel$search$2$3$1":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {v1, v0}, Lcom/muzk/app/ui/search/SearchViewModel;->access$shortMessage(Lcom/muzk/app/ui/search/SearchViewModel;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x31

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v6

    invoke-static/range {v9 .. v17}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v6

    .line 108
    .end local v6    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v18    # "$i$a$-update-SearchViewModel$search$2$3$1":I
    nop

    .line 109
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    nop

    .line 61
    .end local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 59
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-SearchViewModel$search$2$3":I
    nop

    .line 62
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
