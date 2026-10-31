.class final Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "YtDlpRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/data/YtDlpRepository;->streamUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYtDlpRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YtDlpRepository.kt\ncom/muzk/app/data/YtDlpRepository$streamUrl$2\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,86:1\n183#2,2:87\n*S KotlinDebug\n*F\n+ 1 YtDlpRepository.kt\ncom/muzk/app/data/YtDlpRepository$streamUrl$2\n*L\n47#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.muzk.app.data.YtDlpRepository$streamUrl$2"
    f = "YtDlpRepository.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $pageUrl:Ljava/lang/String;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$albpA-XNLkzZa4oVbrjxxkpqNPA(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->invokeSuspend$lambda$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->$pageUrl:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    new-instance v0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;

    iget-object v1, p0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->$pageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 36
    iget v1, p0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->label:I

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

    .line 37
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v1, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    invoke-virtual {v1}, Lcom/muzk/app/MuzkApp$Companion;->getYtdlReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 36
    return-object v0

    .line 38
    :cond_0
    :goto_0
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    iget-object v1, p0, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;->$pageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$invokeSuspend_u24lambda_u240":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-apply-YtDlpRepository$streamUrl$2$request$1":I
    const-string v3, "-f"

    const-string v4, "bestaudio[ext=m4a]/bestaudio/best"

    invoke-virtual {v1, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 40
    const-string v3, "--get-url"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 41
    const-string v3, "--no-playlist"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 42
    const-string v3, "--no-warnings"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 43
    nop

    .line 38
    .end local v1    # "$this$invokeSuspend_u24lambda_u240":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .end local v2    # "$i$a$-apply-YtDlpRepository$streamUrl$2$request$1":I
    nop

    .line 44
    .local v0, "request":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    sget-object v1, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-static {v1}, Lcom/muzk/app/data/YtDlpRepository;->access$getYtdl(Lcom/muzk/app/data/YtDlpRepository;)Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->getOut()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 45
    .end local v0    # "request":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    invoke-static {v1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2$$ExternalSyntheticLambda0;-><init>()V

    .line 46
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 47
    .local v0, "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 47
    .local v5, "$i$a$-firstOrNull-YtDlpRepository$streamUrl$2$2":I
    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "http"

    invoke-static {v4, v8, v6, v7, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    .line 87
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-firstOrNull-YtDlpRepository$streamUrl$2$2":I
    if-eqz v4, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 88
    .end local v0    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 47
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 44
    if-eqz v2, :cond_3

    .line 48
    return-object v2

    .line 44
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "O yt-dlp n\u00e3o devolveu uma URL de \u00e1udio"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
