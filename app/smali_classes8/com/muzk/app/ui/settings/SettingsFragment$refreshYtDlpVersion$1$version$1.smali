.class final Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.muzk.app.ui.settings.SettingsFragment$refreshYtDlpVersion$1$version$1"
    f = "SettingsFragment.kt"
    i = {}
    l = {
        0x4d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/settings/SettingsFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/settings/SettingsFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

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

    new-instance v0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;

    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    invoke-direct {v0, v1, p2}, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;-><init>(Lcom/muzk/app/ui/settings/SettingsFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-SettingsFragment$refreshYtDlpVersion$1$version$1$1":I
    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/muzk/app/ui/settings/SettingsFragment;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "$i$a$-runCatching-SettingsFragment$refreshYtDlpVersion$1$version$1$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 77
    .local v1, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    .end local v1    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    const/4 v1, 0x0

    .line 77
    .local v1, "$i$a$-runCatching-SettingsFragment$refreshYtDlpVersion$1$version$1$1":I
    sget-object v3, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    invoke-virtual {v3}, Lcom/muzk/app/MuzkApp$Companion;->getYtdlReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    iput-object v2, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lcom/muzk/app/ui/settings/SettingsFragment$refreshYtDlpVersion$1$version$1;->label:I

    invoke-interface {v3, p0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 76
    return-object v0

    .line 77
    :cond_0
    move v0, v1

    move-object v1, v2

    .end local v1    # "$i$a$-runCatching-SettingsFragment$refreshYtDlpVersion$1$version$1$1":I
    .restart local v0    # "$i$a$-runCatching-SettingsFragment$refreshYtDlpVersion$1$version$1$1":I
    :goto_0
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v2

    invoke-virtual {v1}, Lcom/muzk/app/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yausername/youtubedl_android/YoutubeDL;->versionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-SettingsFragment$refreshYtDlpVersion$1$version$1$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
