.class final Lcom/muzk/app/ui/MainActivity$playDownloaded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/MainActivity;->playDownloaded(Ljava/lang/String;)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/muzk/app/ui/MainActivity$playDownloaded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n295#2,2:217\n1971#2,14:219\n1#3:233\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/muzk/app/ui/MainActivity$playDownloaded$1\n*L\n158#1:217,2\n159#1:219,14\n*E\n"
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
    c = "com.muzk.app.ui.MainActivity$playDownloaded$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x9d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/MainActivity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/MainActivity$playDownloaded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    iput-object p2, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->$title:Ljava/lang/String;

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

    new-instance v0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;

    iget-object v1, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    iget-object v2, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->$title:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;-><init>(Lcom/muzk/app/ui/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 156
    iget v1, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v1, Lcom/muzk/app/data/LocalMusicRepository;->INSTANCE:Lcom/muzk/app/data/LocalMusicRepository;

    iget-object v3, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    check-cast v3, Landroid/content/Context;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->label:I

    invoke-virtual {v1, v3, v4}, Lcom/muzk/app/data/LocalMusicRepository;->loadTracks(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 156
    return-object v0

    .line 157
    :cond_0
    move-object v0, p1

    move-object p1, v1

    .line 156
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 158
    .local p1, "tracks":Ljava/util/List;
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    iget-object v3, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->$title:Ljava/lang/String;

    const/4 v4, 0x0

    .line 217
    .local v4, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v7, v1

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .local v7, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v8, 0x0

    .line 158
    .local v8, "$i$a$-firstOrNull-MainActivity$playDownloaded$1$match$1":I
    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 217
    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v8    # "$i$a$-firstOrNull-MainActivity$playDownloaded$1$match$1":I
    if-eqz v7, :cond_1

    goto :goto_1

    .line 218
    .end local v1    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v1, v6

    .line 158
    .end local v4    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v1, Lcom/muzk/app/data/LocalTrack;

    if-nez v1, :cond_7

    .line 159
    check-cast p1, Ljava/lang/Iterable;

    .local p1, "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 219
    .local v2, "$i$f$maxByOrNull":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 220
    .end local p1    # "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    .local v3, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 221
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 222
    .local v6, "maxElem$iv":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 223
    :cond_4
    move-object p1, v6

    check-cast p1, Lcom/muzk/app/data/LocalTrack;

    .local p1, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v1, 0x0

    .line 159
    .local v1, "$i$a$-maxByOrNull-MainActivity$playDownloaded$1$match$2":I
    invoke-virtual {p1}, Lcom/muzk/app/data/LocalTrack;->getDateAdded()J

    move-result-wide v4

    .line 223
    .end local v1    # "$i$a$-maxByOrNull-MainActivity$playDownloaded$1$match$2":I
    .end local p1    # "it":Lcom/muzk/app/data/LocalTrack;
    nop

    .line 225
    .local v4, "maxValue$iv":J
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 226
    .local p1, "e$iv":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/data/LocalTrack;

    .local v1, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v7, 0x0

    .line 159
    .local v7, "$i$a$-maxByOrNull-MainActivity$playDownloaded$1$match$2":I
    invoke-virtual {v1}, Lcom/muzk/app/data/LocalTrack;->getDateAdded()J

    move-result-wide v7

    .line 226
    .end local v1    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v7    # "$i$a$-maxByOrNull-MainActivity$playDownloaded$1$match$2":I
    nop

    .line 227
    .local v7, "v$iv":J
    cmp-long v1, v4, v7

    if-gez v1, :cond_6

    .line 228
    .end local v4    # "maxValue$iv":J
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    move-object v1, p1

    .line 229
    .local v1, "maxElem$iv":Ljava/lang/Object;
    move-wide v4, v7

    move-object v6, v1

    .line 231
    .end local v1    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "v$iv":J
    .end local p1    # "e$iv":Ljava/lang/Object;
    .restart local v4    # "maxValue$iv":J
    .restart local v6    # "maxElem$iv":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5

    .line 232
    nop

    .end local v2    # "$i$f$maxByOrNull":I
    .end local v3    # "iterator$iv":Ljava/util/Iterator;
    .end local v4    # "maxValue$iv":J
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    :goto_2
    move-object v1, v6

    check-cast v1, Lcom/muzk/app/data/LocalTrack;

    .line 158
    :cond_7
    move-object p1, v1

    .line 160
    .local p1, "match":Lcom/muzk/app/data/LocalTrack;
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/muzk/app/ui/MainActivity$playDownloaded$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    .line 233
    .local p1, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v2, 0x0

    .line 160
    .local v2, "$i$a$-let-MainActivity$playDownloaded$1$1":I
    invoke-static {v1}, Lcom/muzk/app/ui/MainActivity;->access$getPlayer(Lcom/muzk/app/ui/MainActivity;)Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v3

    invoke-static {p1}, Lcom/muzk/app/data/ModelsKt;->toMediaItem(Lcom/muzk/app/data/LocalTrack;)Landroidx/media3/common/MediaItem;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget v5, Lcom/muzk/app/R$string;->source_downloads:I

    invoke-virtual {v1, v5}, Lcom/muzk/app/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lcom/muzk/app/playback/PlayerViewModel;->playQueue(Ljava/util/List;ILjava/lang/String;)V

    .end local v2    # "$i$a$-let-MainActivity$playDownloaded$1$1":I
    .end local p1    # "it":Lcom/muzk/app/data/LocalTrack;
    nop

    .line 161
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
