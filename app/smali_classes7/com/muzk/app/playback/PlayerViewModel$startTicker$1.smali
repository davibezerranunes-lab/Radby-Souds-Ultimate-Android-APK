.class final Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/playback/PlayerViewModel;->startTicker()V
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
    value = "SMAP\nPlayerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerViewModel.kt\ncom/muzk/app/playback/PlayerViewModel$startTicker$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,153:1\n230#2,5:154\n*S KotlinDebug\n*F\n+ 1 PlayerViewModel.kt\ncom/muzk/app/playback/PlayerViewModel$startTicker$1\n*L\n140#1:154,5\n*E\n"
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
    c = "com.muzk.app.playback.PlayerViewModel$startTicker$1"
    f = "PlayerViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x8e
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/playback/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/muzk/app/playback/PlayerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/playback/PlayerViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->this$0:Lcom/muzk/app/playback/PlayerViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;

    iget-object v1, p0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->this$0:Lcom/muzk/app/playback/PlayerViewModel;

    invoke-direct {v0, v1, p2}, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;-><init>(Lcom/muzk/app/playback/PlayerViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 137
    iget v2, v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;
    :pswitch_0
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    iget-object v3, v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .local v3, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_1

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget-object v3, v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    move-object v4, v0

    .line 138
    .end local p0    # "this":Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;
    .restart local v3    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v4, "this":Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;
    :goto_0
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    iget-object v5, v4, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->this$0:Lcom/muzk/app/playback/PlayerViewModel;

    invoke-static {v5}, Lcom/muzk/app/playback/PlayerViewModel;->access$getController$p(Lcom/muzk/app/playback/PlayerViewModel;)Landroidx/media3/session/MediaController;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v4, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->this$0:Lcom/muzk/app/playback/PlayerViewModel;

    .local v5, "c":Landroidx/media3/session/MediaController;
    const/4 v7, 0x0

    .line 140
    .local v7, "$i$a$-let-PlayerViewModel$startTicker$1$1":I
    invoke-static {v6}, Lcom/muzk/app/playback/PlayerViewModel;->access$get_state$p(Lcom/muzk/app/playback/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    .local v6, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v8, 0x0

    .line 154
    .local v8, "$i$f$update":I
    :cond_0
    nop

    .line 155
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 156
    .local v9, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v30, v9

    check-cast v30, Lcom/muzk/app/playback/PlayerUiState;

    .local v30, "it":Lcom/muzk/app/playback/PlayerUiState;
    move-object/from16 v10, v30

    const/16 v31, 0x0

    .line 140
    .local v31, "$i$a$-update-PlayerViewModel$startTicker$1$1$1":I
    invoke-virtual {v5}, Landroidx/media3/session/MediaController;->getCurrentPosition()J

    move-result-wide v17

    invoke-virtual {v5}, Landroidx/media3/session/MediaController;->getDuration()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v19

    const/16 v28, 0x7f3f

    const/16 v29, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v10 .. v29}, Lcom/muzk/app/playback/PlayerUiState;->copy$default(Lcom/muzk/app/playback/PlayerUiState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/playback/PlayerUiState;

    move-result-object v10

    .line 156
    .end local v30    # "it":Lcom/muzk/app/playback/PlayerUiState;
    .end local v31    # "$i$a$-update-PlayerViewModel$startTicker$1$1$1":I
    nop

    .line 157
    .local v10, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v6, v9, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 158
    nop

    .line 141
    .end local v6    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v8    # "$i$f$update":I
    .end local v9    # "prevValue$iv":Ljava/lang/Object;
    .end local v10    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 139
    .end local v5    # "c":Landroidx/media3/session/MediaController;
    .end local v7    # "$i$a$-let-PlayerViewModel$startTicker$1$1":I
    nop

    .line 142
    :cond_1
    move-object v5, v4

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, v4, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v4, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;->label:I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 137
    return-object v1

    .line 142
    :cond_2
    :goto_1
    goto :goto_0

    .line 144
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
