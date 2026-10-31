.class final Lcom/muzk/app/ui/home/HomeViewModel$state$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/home/HomeViewModel;-><init>(Landroid/app/Application;)V
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
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/muzk/app/ui/home/HomeUiState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeViewModel.kt\ncom/muzk/app/ui/home/HomeViewModel$state$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,92:1\n1202#2,2:93\n1230#2,4:95\n1863#2:99\n1611#2,9:100\n1863#2:109\n1864#2:111\n1620#2:112\n1864#2:113\n1485#2:114\n1510#2,3:115\n1513#2,3:125\n1062#2:128\n1863#2,2:129\n774#2:131\n865#2,2:132\n1062#2:134\n1557#2:135\n1628#2,3:136\n1#3:110\n381#4,7:118\n*S KotlinDebug\n*F\n+ 1 HomeViewModel.kt\ncom/muzk/app/ui/home/HomeViewModel$state$1\n*L\n47#1:93,2\n47#1:95,4\n50#1:99\n51#1:100,9\n51#1:109\n51#1:111\n51#1:112\n50#1:113\n58#1:114\n58#1:115,3\n58#1:125,3\n59#1:128\n61#1:129,2\n66#1:131\n66#1:132,2\n67#1:134\n73#1:135\n73#1:136,3\n51#1:110\n58#1:118,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00082\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000cH\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/muzk/app/ui/home/HomeUiState;",
        "all",
        "",
        "Lcom/muzk/app/data/LocalTrack;",
        "playlists",
        "Lcom/muzk/app/data/Playlist;",
        "counts",
        "",
        "",
        "",
        "<destruct>",
        "Lkotlin/Pair;",
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
    c = "com.muzk.app.ui.home.HomeViewModel$state$1"
    f = "HomeViewModel.kt"
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


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/home/HomeViewModel$state$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/Map;

    check-cast p4, Lkotlin/Pair;

    check-cast p5, Lkotlin/coroutines/Continuation;

    invoke-virtual/range {p0 .. p5}, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->invoke(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/home/HomeUiState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;

    invoke-direct {v0, p5}, Lcom/muzk/app/ui/home/HomeViewModel$state$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$3:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 46
    iget v1, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    iget-object v2, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "all":Ljava/util/List;
    iget-object v3, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "playlists":Ljava/util/List;
    iget-object v4, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$2:Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, Ljava/util/Map;

    .local v9, "counts":Ljava/util/Map;
    iget-object v4, v0, Lcom/muzk/app/ui/home/HomeViewModel$state$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .local v10, "granted":Z
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 47
    .local v11, "loaded":Z
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 93
    .local v5, "$i$f$associateBy":I
    const/16 v12, 0xa

    invoke-static {v4, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 94
    .local v6, "capacity$iv":I
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v6, v7

    check-cast v6, Ljava/util/Map;

    .local v4, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .local v6, "destination$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 95
    .local v7, "$i$f$associateByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v4    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v4

    check-cast v13, Lcom/muzk/app/data/LocalTrack;

    .local v13, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v14, 0x0

    .line 47
    .local v14, "$i$a$-associateBy-HomeViewModel$state$1$byId$1":I
    invoke-virtual {v13}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v13

    .end local v13    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v14    # "$i$a$-associateBy-HomeViewModel$state$1$byId$1":I
    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    .line 96
    invoke-interface {v6, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 94
    .end local v6    # "destination$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$associateByTo":I
    nop

    .line 47
    .end local v5    # "$i$f$associateBy":I
    move-object v4, v6

    .line 48
    .local v4, "byId":Ljava/util/Map;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    check-cast v13, Ljava/util/List;

    .line 50
    .local v13, "tiles":Ljava/util/List;
    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    const/4 v14, 0x4

    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 99
    .local v5, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    check-cast v3, Lcom/muzk/app/data/Playlist;

    .local v3, "p":Lcom/muzk/app/data/Playlist;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-forEach-HomeViewModel$state$1$1":I
    invoke-virtual {v3}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 100
    .local v15, "$i$f$mapNotNull":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v16

    check-cast v12, Ljava/util/Collection;

    .local v8, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v12, "destination$iv$iv":Ljava/util/Collection;
    const/16 v16, 0x0

    .line 108
    .local v16, "$i$f$mapNotNullTo":I
    nop

    .local v8, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 109
    .local v17, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v8    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 108
    .local v19, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v20, v8

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    .local v20, "p0":J
    const/16 v22, 0x0

    .local v22, "$i$a$-mapNotNull-HomeViewModel$state$1$1$list$1":I
    const/16 v23, 0x0

    .line 51
    .local v23, "$i$f$invokeSuspend$lambda$1$stub_for_inlining":I
    invoke-static/range {v20 .. v21}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/muzk/app/data/LocalTrack;

    .line 108
    .end local v20    # "p0":J
    .end local v22    # "$i$a$-mapNotNull-HomeViewModel$state$1$1$list$1":I
    .end local v23    # "$i$f$invokeSuspend$lambda$1$stub_for_inlining":I
    if-eqz v14, :cond_1

    .line 110
    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 108
    .local v20, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v20    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    const/4 v14, 0x4

    goto :goto_2

    .line 111
    :cond_2
    nop

    .line 112
    .end local v17    # "$i$f$forEach":I
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v16    # "$i$f$mapNotNullTo":I
    move-object/from16 v29, v12

    check-cast v29, Ljava/util/List;

    .line 100
    nop

    .line 51
    .end local v15    # "$i$f$mapNotNull":I
    nop

    .line 52
    .local v29, "list":Ljava/util/List;
    move-object v8, v13

    check-cast v8, Ljava/util/Collection;

    new-instance v12, Lcom/muzk/app/ui/home/HomeTile;

    sget-object v25, Lcom/muzk/app/ui/home/HomeTile$Kind;->PLAYLIST:Lcom/muzk/app/ui/home/HomeTile$Kind;

    invoke-virtual {v3}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v3}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v29 .. v29}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/muzk/app/data/LocalTrack;

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/muzk/app/data/LocalTrack;->getUri()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v28, v14

    goto :goto_3

    .end local v3    # "p":Lcom/muzk/app/data/Playlist;
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v28, v3

    :goto_3
    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v29}, Lcom/muzk/app/ui/home/HomeTile;-><init>(Lcom/muzk/app/ui/home/HomeTile$Kind;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    nop

    .line 99
    .end local v7    # "$i$a$-forEach-HomeViewModel$state$1$1":I
    .end local v29    # "list":Ljava/util/List;
    const/16 v12, 0xa

    const/4 v14, 0x4

    goto/16 :goto_1

    .line 113
    .end local v4    # "byId":Ljava/util/Map;
    :cond_4
    nop

    .line 54
    .end local v5    # "$i$f$forEach":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 55
    move-object v12, v13

    check-cast v12, Ljava/util/Collection;

    new-instance v14, Lcom/muzk/app/ui/home/HomeTile;

    sget-object v4, Lcom/muzk/app/ui/home/HomeTile$Kind;->RECENT:Lcom/muzk/app/ui/home/HomeTile$Kind;

    const-string v6, "Todas as m\u00fasicas"

    const/4 v7, 0x0

    const-string v5, "recent"

    move-object v3, v14

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/muzk/app/ui/home/HomeTile;-><init>(Lcom/muzk/app/ui/home/HomeTile$Kind;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_9

    .line 58
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$f$groupBy":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .local v3, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 115
    .local v6, "$i$f$groupByTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 116
    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Lcom/muzk/app/data/LocalTrack;

    .local v8, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v12, 0x0

    .line 58
    .local v12, "$i$a$-groupBy-HomeViewModel$state$1$2":I
    invoke-virtual {v8}, Lcom/muzk/app/data/LocalTrack;->getFolderPath()Ljava/lang/String;

    move-result-object v8

    .line 116
    .end local v8    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v12    # "$i$a$-groupBy-HomeViewModel$state$1$2":I
    nop

    .line 117
    .local v8, "key$iv$iv":Ljava/lang/Object;
    move-object v12, v5

    .local v12, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v14, 0x0

    .line 118
    .local v14, "$i$f$getOrPut":I
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 119
    .local v15, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v15, :cond_6

    .line 120
    .end local v15    # "value$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 117
    .local v15, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/List;

    .line 120
    .end local v15    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object/from16 v15, v16

    .line 121
    .local v15, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v8    # "key$iv$iv":Ljava/lang/Object;
    .end local v12    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    nop

    .end local v15    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_5

    .line 124
    .local v15, "value$iv$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .line 119
    .end local v15    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 117
    .end local v14    # "$i$f$getOrPut":I
    move-object v8, v15

    check-cast v8, Ljava/util/List;

    .line 125
    .local v8, "list$iv$iv":Ljava/util/List;
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 127
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "list$iv$iv":Ljava/util/List;
    :cond_7
    nop

    .line 114
    .end local v5    # "destination$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$groupByTo":I
    nop

    .line 59
    .end local v4    # "$i$f$groupBy":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$f$sortedByDescending":I
    new-instance v5, Lcom/muzk/app/ui/home/HomeViewModel$state$1$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v5}, Lcom/muzk/app/ui/home/HomeViewModel$state$1$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .end local v3    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$sortedByDescending":I
    check-cast v3, Ljava/lang/Iterable;

    .line 60
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    rsub-int/lit8 v14, v4, 0x4

    invoke-static {v3, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 61
    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v6, v3

    check-cast v6, Ljava/util/Map$Entry;

    const/4 v7, 0x0

    .line 61
    .local v7, "$i$a$-forEach-HomeViewModel$state$1$4":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "path":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 62
    .local v6, "list":Ljava/util/List;
    move-object v12, v13

    check-cast v12, Ljava/util/Collection;

    new-instance v15, Lcom/muzk/app/ui/home/HomeTile;

    sget-object v16, Lcom/muzk/app/ui/home/HomeTile$Kind;->FOLDER:Lcom/muzk/app/ui/home/HomeTile$Kind;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/muzk/app/data/LocalTrack;

    invoke-virtual {v14}, Lcom/muzk/app/data/LocalTrack;->getFolderName()Ljava/lang/String;

    move-result-object v17

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/muzk/app/data/LocalTrack;

    invoke-virtual {v14}, Lcom/muzk/app/data/LocalTrack;->getUri()Landroid/net/Uri;

    move-result-object v18

    move-object v14, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lcom/muzk/app/ui/home/HomeTile;-><init>(Lcom/muzk/app/ui/home/HomeTile$Kind;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    nop

    .line 129
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v6    # "list":Ljava/util/List;
    .end local v7    # "$i$a$-forEach-HomeViewModel$state$1$4":I
    .end local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    goto :goto_6

    .line 130
    :cond_8
    nop

    .line 66
    .end local v4    # "$i$f$forEach":I
    :cond_9
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .end local v2    # "all":Ljava/util/List;
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_a
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .local v7, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v8, 0x0

    .line 66
    .local v8, "$i$a$-filter-HomeViewModel$state$1$played$1":I
    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_8

    :cond_b
    move v12, v6

    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    :goto_8
    if-lez v12, :cond_c

    const/4 v6, 0x1

    .line 132
    .end local v8    # "$i$a$-filter-HomeViewModel$state$1$played$1":I
    :cond_c
    if-eqz v6, :cond_a

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 133
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_d
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$filterTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 131
    nop

    .end local v2    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 67
    .local v0, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 134
    .local v2, "$i$f$sortedByDescending":I
    new-instance v3, Lcom/muzk/app/ui/home/HomeViewModel$state$1$invokeSuspend$$inlined$sortedByDescending$2;

    invoke-direct {v3, v9}, Lcom/muzk/app/ui/home/HomeViewModel$state$1$invokeSuspend$$inlined$sortedByDescending$2;-><init>(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedByDescending":I
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    const/4 v2, 0x5

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 66
    nop

    .line 69
    .local v0, "played":Ljava/util/List;
    nop

    .line 70
    nop

    .line 71
    .end local v10    # "granted":Z
    nop

    .line 72
    .end local v11    # "loaded":Z
    nop

    .line 73
    .end local v13    # "tiles":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .end local v0    # "played":Ljava/util/List;
    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v0, 0x0

    .line 135
    .local v0, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v2, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 136
    .local v4, "$i$f$mapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v2

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .end local v2    # "item$iv$iv":Ljava/lang/Object;
    .restart local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-map-HomeViewModel$state$1$5":I
    new-instance v8, Lcom/muzk/app/ui/home/HomeTrack;

    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_a

    :cond_e
    move v12, v6

    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    :goto_a
    invoke-direct {v8, v7, v12}, Lcom/muzk/app/ui/home/HomeTrack;-><init>(Lcom/muzk/app/data/LocalTrack;I)V

    .line 137
    .end local v2    # "$i$a$-map-HomeViewModel$state$1$5":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 138
    .end local v9    # "counts":Ljava/util/Map;
    :cond_f
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$mapTo":I
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 135
    nop

    .line 69
    .end local v0    # "$i$f$map":I
    new-instance v0, Lcom/muzk/app/ui/home/HomeUiState;

    invoke-direct {v0, v10, v11, v13, v2}, Lcom/muzk/app/ui/home/HomeUiState;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    .line 74
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
