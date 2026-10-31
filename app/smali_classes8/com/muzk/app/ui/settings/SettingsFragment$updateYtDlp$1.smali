.class final Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/settings/SettingsFragment;->updateYtDlp(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.muzk.app.ui.settings.SettingsFragment$updateYtDlp$1"
    f = "SettingsFragment.kt"
    i = {}
    l = {
        0x59
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $app:Landroid/content/Context;

.field final synthetic $pref:Landroidx/preference/Preference;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;Lcom/muzk/app/ui/settings/SettingsFragment;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/Preference;",
            "Lcom/muzk/app/ui/settings/SettingsFragment;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$pref:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    iput-object p3, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$app:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;

    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$pref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    iget-object v3, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$app:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;-><init>(Landroidx/preference/Preference;Lcom/muzk/app/ui/settings/SettingsFragment;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->label:I

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

    .line 89
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1$result$1;

    iget-object v4, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$app:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1$result$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->label:I

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 88
    return-object v0

    .line 89
    :cond_0
    move-object v0, p1

    move-object p1, v1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 95
    .local p1, "result":Ljava/lang/Object;
    nop

    .line 96
    .end local p1    # "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "getString(...)"

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    .local v3, "it":Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    const/4 v5, 0x0

    .line 97
    .local v5, "$i$a$-onSuccess-SettingsFragment$updateYtDlp$1$1":I
    sget-object v6, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->DONE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    if-ne v3, v6, :cond_1

    sget v6, Lcom/muzk/app/R$string;->update_done:I

    goto :goto_1

    .end local v3    # "it":Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    :cond_1
    sget v6, Lcom/muzk/app/R$string;->update_latest:I

    :goto_1
    invoke-virtual {v1, v6}, Lcom/muzk/app/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/muzk/app/ui/settings/SettingsFragment;->access$toast(Lcom/muzk/app/ui/settings/SettingsFragment;Ljava/lang/String;)V

    .line 98
    nop

    .line 96
    .end local v5    # "$i$a$-onSuccess-SettingsFragment$updateYtDlp$1$1":I
    :cond_2
    nop

    .line 99
    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 115
    .local p1, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$a$-onFailure-SettingsFragment$updateYtDlp$1$2":I
    sget v5, Lcom/muzk/app/R$string;->update_failed:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .end local p1    # "it":Ljava/lang/Throwable;
    const-string v6, ""

    :cond_3
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Lcom/muzk/app/ui/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/muzk/app/ui/settings/SettingsFragment;->access$toast(Lcom/muzk/app/ui/settings/SettingsFragment;Ljava/lang/String;)V

    .line 100
    .end local v3    # "$i$a$-onFailure-SettingsFragment$updateYtDlp$1$2":I
    :cond_4
    iget-object p1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$pref:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 101
    iget-object p1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->this$0:Lcom/muzk/app/ui/settings/SettingsFragment;

    iget-object v1, p0, Lcom/muzk/app/ui/settings/SettingsFragment$updateYtDlp$1;->$pref:Landroidx/preference/Preference;

    invoke-static {p1, v1}, Lcom/muzk/app/ui/settings/SettingsFragment;->access$refreshYtDlpVersion(Lcom/muzk/app/ui/settings/SettingsFragment;Landroidx/preference/Preference;)V

    .line 102
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
