.class final Lcom/muzk/app/MuzkApp$initYtDlp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MuzkApp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/MuzkApp;->initYtDlp()Lkotlinx/coroutines/Job;
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
    value = "SMAP\nMuzkApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MuzkApp.kt\ncom/muzk/app/MuzkApp$initYtDlp$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,91:1\n1#2:92\n41#3,12:93\n*S KotlinDebug\n*F\n+ 1 MuzkApp.kt\ncom/muzk/app/MuzkApp$initYtDlp$1\n*L\n57#1:93,12\n*E\n"
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
    c = "com.muzk.app.MuzkApp$initYtDlp$1"
    f = "MuzkApp.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/MuzkApp;


# direct methods
.method constructor <init>(Lcom/muzk/app/MuzkApp;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/MuzkApp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/MuzkApp$initYtDlp$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->this$0:Lcom/muzk/app/MuzkApp;

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

    new-instance v0, Lcom/muzk/app/MuzkApp$initYtDlp$1;

    iget-object v1, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->this$0:Lcom/muzk/app/MuzkApp;

    invoke-direct {v0, v1, p2}, Lcom/muzk/app/MuzkApp$initYtDlp$1;-><init>(Lcom/muzk/app/MuzkApp;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/MuzkApp$initYtDlp$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/MuzkApp$initYtDlp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/MuzkApp$initYtDlp$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/MuzkApp$initYtDlp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "Radby Sonds"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 44
    :try_start_0
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v2

    iget-object v3, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->this$0:Lcom/muzk/app/MuzkApp;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/yausername/youtubedl_android/YoutubeDL;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/yausername/ffmpeg/FFmpeg;->getInstance()Lcom/yausername/ffmpeg/FFmpeg;

    move-result-object v2

    iget-object v3, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->this$0:Lcom/muzk/app/MuzkApp;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/yausername/ffmpeg/FFmpeg;->init(Landroid/content/Context;)V

    .line 46
    sget-object v2, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    invoke-virtual {v2}, Lcom/muzk/app/MuzkApp$Companion;->getYtdlReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-object v2, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->this$0:Lcom/muzk/app/MuzkApp;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v3, 0x0

    const-string v5, "ytdlp_last_update"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 55
    .local v3, "last":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 56
    .end local v3    # "last":J
    iget-object v3, p0, Lcom/muzk/app/MuzkApp$initYtDlp$1;->this$0:Lcom/muzk/app/MuzkApp;

    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    const/4 v1, 0x0

    .line 56
    .local v1, "$i$a$-runCatching-MuzkApp$initYtDlp$1$1":I
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v4

    check-cast v3, Landroid/content/Context;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v3, v7, v6, v7}, Lcom/yausername/youtubedl_android/YoutubeDL;->updateYoutubeDL$default(Lcom/yausername/youtubedl_android/YoutubeDL;Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    move-result-object v3

    .end local v1    # "$i$a$-runCatching-MuzkApp$initYtDlp$1$1":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    .line 92
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$a$-onSuccess-MuzkApp$initYtDlp$1$2":I
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .local v2, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 94
    const/4 v4, 0x0

    .line 93
    .local v4, "commit$iv":Z
    const/4 v6, 0x0

    .line 97
    .local v6, "$i$f$edit":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 98
    .local v2, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v7, v2

    .local v7, "$this$invokeSuspend_u24lambda_u242_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 57
    .local v8, "$i$a$-edit$default-MuzkApp$initYtDlp$1$2$1":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v7, v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    .end local v7    # "$this$invokeSuspend_u24lambda_u242_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "$i$a$-edit$default-MuzkApp$initYtDlp$1$2$1":I
    nop

    .line 99
    nop

    .line 102
    .end local v4    # "commit$iv":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    .end local v2    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    nop

    .line 57
    .end local v6    # "$i$f$edit":I
    nop

    .line 58
    .end local v3    # "$i$a$-onSuccess-MuzkApp$initYtDlp$1$2":I
    :cond_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 58
    .local v2, "$i$a$-onFailure-MuzkApp$initYtDlp$1$3":I
    const-string v3, "N\u00e3o consegui atualizar o yt-dlp agora"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-MuzkApp$initYtDlp$1$3":I
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Falha ao iniciar yt-dlp"

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    sget-object v0, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    invoke-virtual {v0}, Lcom/muzk/app/MuzkApp$Companion;->getYtdlReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 50
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
