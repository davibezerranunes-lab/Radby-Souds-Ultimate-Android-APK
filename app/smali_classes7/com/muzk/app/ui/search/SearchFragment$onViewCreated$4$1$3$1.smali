.class final Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muzk/app/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/muzk/app/ui/search/SearchEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Lcom/muzk/app/ui/search/SearchEvent;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/search/SearchEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 98
    nop

    .line 99
    instance-of v0, p1, Lcom/muzk/app/ui/search/SearchEvent$Play;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getPlayer(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/search/SearchEvent$Play;

    invoke-virtual {v1}, Lcom/muzk/app/ui/search/SearchEvent$Play;->getTrack()Lcom/muzk/app/data/RemoteTrack;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/muzk/app/ui/search/SearchEvent$Play;

    invoke-virtual {v2}, Lcom/muzk/app/ui/search/SearchEvent$Play;->getStreamUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/muzk/app/data/ModelsKt;->toMediaItem(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v2}, Lcom/muzk/app/ui/search/SearchFragment;->access$getVm(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/ui/search/SearchViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/ui/search/SearchViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muzk/app/ui/search/SearchUiState;

    invoke-virtual {v2}, Lcom/muzk/app/ui/search/SearchUiState;->getQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/muzk/app/playback/PlayerViewModel;->playQueue(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_0
    instance-of v0, p1, Lcom/muzk/app/ui/search/SearchEvent$Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/search/SearchEvent$Message;

    invoke-virtual {v1}, Lcom/muzk/app/ui/search/SearchEvent$Message;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/muzk/app/ui/search/SearchFragment;->access$snack(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_1
    instance-of v0, p1, Lcom/muzk/app/ui/search/SearchEvent$Downloading;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    .line 102
    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    move-object v2, p1

    check-cast v2, Lcom/muzk/app/ui/search/SearchEvent$Downloading;

    invoke-virtual {v2}, Lcom/muzk/app/ui/search/SearchEvent$Downloading;->getWaitingWifi()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/muzk/app/R$string;->dl_waiting_wifi:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/muzk/app/R$string;->dl_started:I

    :goto_0
    move-object v3, p1

    check-cast v3, Lcom/muzk/app/ui/search/SearchEvent$Downloading;

    invoke-virtual {v3}, Lcom/muzk/app/ui/search/SearchEvent$Downloading;->getTrack()Lcom/muzk/app/data/RemoteTrack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muzk/app/data/RemoteTrack;->getTitle()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/muzk/app/ui/search/SearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {v0, v1}, Lcom/muzk/app/ui/search/SearchFragment;->access$snack(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;)V

    .line 105
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 98
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/search/SearchEvent;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$3$1;->emit(Lcom/muzk/app/ui/search/SearchEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
