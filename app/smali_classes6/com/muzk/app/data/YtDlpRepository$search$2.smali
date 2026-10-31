.class final Lcom/muzk/app/data/YtDlpRepository$search$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "YtDlpRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/data/YtDlpRepository;->search(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/muzk/app/data/RemoteTrack;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYtDlpRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YtDlpRepository.kt\ncom/muzk/app/data/YtDlpRepository$search$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1611#2,9:87\n1863#2:96\n1864#2:99\n1620#2:100\n1#3:97\n1#3:98\n*S KotlinDebug\n*F\n+ 1 YtDlpRepository.kt\ncom/muzk/app/data/YtDlpRepository$search$2\n*L\n31#1:87,9\n31#1:96\n31#1:99\n31#1:100\n31#1:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/muzk/app/data/RemoteTrack;",
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
    c = "com.muzk.app.data.YtDlpRepository$search$2"
    f = "YtDlpRepository.kt"
    i = {}
    l = {
        0x13
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $query:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/data/YtDlpRepository$search$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$query:Ljava/lang/String;

    iput p2, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$limit:I

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

    new-instance v0, Lcom/muzk/app/data/YtDlpRepository$search$2;

    iget-object v1, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$query:Ljava/lang/String;

    iget v2, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$limit:I

    invoke-direct {v0, v1, v2, p2}, Lcom/muzk/app/data/YtDlpRepository$search$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/YtDlpRepository$search$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/muzk/app/data/RemoteTrack;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/YtDlpRepository$search$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/data/YtDlpRepository$search$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/data/YtDlpRepository$search$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 18
    iget v1, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->label:I

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

    .line 19
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v1, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    invoke-virtual {v1}, Lcom/muzk/app/MuzkApp$Companion;->getYtdlReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 18
    return-object v0

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    iget-object v1, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/muzk/app/data/YtDlpRepository;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$query:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$limit:I

    iget-object v1, p0, Lcom/muzk/app/data/YtDlpRepository$search$2;->$query:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ytsearch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "target":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    invoke-direct {v1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;-><init>(Ljava/lang/String;)V

    .end local v0    # "target":Ljava/lang/String;
    move-object v0, v1

    .local v0, "$this$invokeSuspend_u24lambda_u240":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$-apply-YtDlpRepository$search$2$request$1":I
    const-string v3, "--dump-single-json"

    invoke-virtual {v0, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 23
    const-string v3, "--flat-playlist"

    invoke-virtual {v0, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 24
    const-string v3, "--no-warnings"

    invoke-virtual {v0, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 25
    nop

    .line 21
    .end local v0    # "$this$invokeSuspend_u24lambda_u240":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .end local v2    # "$i$a$-apply-YtDlpRepository$search$2$request$1":I
    nop

    .line 26
    .local v0, "request":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-static {v2}, Lcom/muzk/app/data/YtDlpRepository;->access$getYtdl(Lcom/muzk/app/data/YtDlpRepository;)Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->getOut()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 27
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "entries"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 28
    .local v1, "entries":Lorg/json/JSONArray;
    if-nez v1, :cond_2

    .line 29
    .end local v1    # "entries":Lorg/json/JSONArray;
    sget-object v1, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-static {v1, v0}, Lcom/muzk/app/data/YtDlpRepository;->access$parse(Lcom/muzk/app/data/YtDlpRepository;Lorg/json/JSONObject;)Lcom/muzk/app/data/RemoteTrack;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 31
    .end local v0    # "json":Lorg/json/JSONObject;
    .restart local v1    # "entries":Lorg/json/JSONArray;
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 95
    .local v5, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 96
    .local v6, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v7

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v0

    .local v0, "element$iv$iv":I
    const/4 v8, 0x0

    .line 95
    .local v8, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    nop

    .local v0, "i":I
    const/4 v9, 0x0

    .line 31
    .local v9, "$i$a$-mapNotNull-YtDlpRepository$search$2$1":I
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_3

    sget-object v11, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    move-object v0, v10

    .line 97
    .local v0, "p0":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .local v10, "$i$a$-let-YtDlpRepository$search$2$1$1":I
    const/4 v12, 0x0

    .line 31
    .local v12, "$i$f$invokeSuspend$lambda$1$stub_for_inlining":I
    invoke-static {v11, v0}, Lcom/muzk/app/data/YtDlpRepository;->access$parse(Lcom/muzk/app/data/YtDlpRepository;Lorg/json/JSONObject;)Lcom/muzk/app/data/RemoteTrack;

    move-result-object v0

    .end local v0    # "p0":Lorg/json/JSONObject;
    .end local v10    # "$i$a$-let-YtDlpRepository$search$2$1$1":I
    .end local v12    # "$i$f$invokeSuspend$lambda$1$stub_for_inlining":I
    goto :goto_3

    .local v0, "i":I
    :cond_3
    move-object v0, v3

    .line 95
    .end local v0    # "i":I
    .end local v9    # "$i$a$-mapNotNull-YtDlpRepository$search$2$1":I
    :goto_3
    if-eqz v0, :cond_4

    .line 98
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 95
    .local v9, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v9    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_4
    goto :goto_2

    .line 99
    .end local v1    # "entries":Lorg/json/JSONArray;
    :cond_5
    nop

    .line 100
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$mapNotNullTo":I
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 87
    nop

    .line 32
    .end local v2    # "$i$f$mapNotNull":I
    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
