.class public final Lcom/muzk/app/ui/search/SearchViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchViewModel.kt\ncom/muzk/app/ui/search/SearchViewModel\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,99:1\n230#2,5:100\n230#2,5:105\n230#2,5:110\n230#2,5:115\n320#3,7:120\n*S KotlinDebug\n*F\n+ 1 SearchViewModel.kt\ncom/muzk/app/ui/search/SearchViewModel\n*L\n55#1:100,5\n70#1:105,5\n76#1:110,5\n88#1:115,5\n97#1:120,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0018J\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u001eJ\u000e\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$J\u000c\u0010&\u001a\u00020\u0018*\u00020\'H\u0002R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000cR\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/muzk/app/ui/search/SearchViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/muzk/app/ui/search/SearchUiState;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_events",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/muzk/app/ui/search/SearchEvent;",
        "events",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getEvents",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "history",
        "Lcom/muzk/app/data/SearchHistory;",
        "recentSearches",
        "",
        "",
        "getRecentSearches",
        "searchJob",
        "Lkotlinx/coroutines/Job;",
        "resolveJob",
        "search",
        "",
        "query",
        "removeRecent",
        "clear",
        "listen",
        "track",
        "Lcom/muzk/app/data/RemoteTrack;",
        "download",
        "shortMessage",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _events:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/muzk/app/ui/search/SearchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/muzk/app/ui/search/SearchUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/muzk/app/ui/search/SearchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final history:Lcom/muzk/app/data/SearchHistory;

.field private final recentSearches:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private resolveJob:Lkotlinx/coroutines/Job;

.field private searchJob:Lkotlinx/coroutines/Job;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/ui/search/SearchUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1tr8c3hRwzKv51pLPZD5-_IKLGo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/ui/search/SearchViewModel;->shortMessage$lambda$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 10
    .param p1, "app"    # Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 38
    new-instance v0, Lcom/muzk/app/ui/search/SearchUiState;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/muzk/app/ui/search/SearchUiState;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 39
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v3, v0, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 42
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->events:Lkotlinx/coroutines/flow/SharedFlow;

    .line 44
    sget-object v0, Lcom/muzk/app/data/SearchHistory;->Companion:Lcom/muzk/app/data/SearchHistory$Companion;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/muzk/app/data/SearchHistory$Companion;->get(Landroid/content/Context;)Lcom/muzk/app/data/SearchHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->history:Lcom/muzk/app/data/SearchHistory;

    .line 45
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->history:Lcom/muzk/app/data/SearchHistory;

    invoke-virtual {v0}, Lcom/muzk/app/data/SearchHistory;->getItems()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->recentSearches:Lkotlinx/coroutines/flow/StateFlow;

    .line 36
    return-void
.end method

.method public static final synthetic access$get_events$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/search/SearchViewModel;

    .line 36
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Lcom/muzk/app/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/search/SearchViewModel;

    .line 36
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$shortMessage(Lcom/muzk/app/ui/search/SearchViewModel;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/search/SearchViewModel;
    .param p1, "$receiver"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Lcom/muzk/app/ui/search/SearchViewModel;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 11
    .param p1, "$this$shortMessage"    # Ljava/lang/Throwable;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    .line 95
    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/muzk/app/ui/search/SearchViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/muzk/app/ui/search/SearchViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 96
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 97
    nop

    .local v0, "$this$lastOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$f$lastOrNull":I
    const/4 v2, 0x0

    .line 121
    .local v2, "last$iv":Ljava/lang/Object;
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 122
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 97
    .local v6, "$i$a$-lastOrNull-SearchViewModel$shortMessage$2":I
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, "ERROR"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    .line 122
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-lastOrNull-SearchViewModel$shortMessage$2":I
    if-eqz v5, :cond_1

    .line 123
    move-object v2, v4

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 126
    :cond_2
    nop

    .line 97
    .end local v0    # "$this$lastOrNull$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "last$iv":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 94
    if-nez v0, :cond_4

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "erro"

    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->first(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private static final shortMessage$lambda$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 14

    .line 69
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->searchJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$f$update":I
    :cond_1
    nop

    .line 106
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object v12, v2

    check-cast v12, Lcom/muzk/app/ui/search/SearchUiState;

    .local v12, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/4 v13, 0x0

    .line 70
    .local v13, "$i$a$-update-SearchViewModel$clear$1":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    const/16 v10, 0x30

    const/4 v11, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    invoke-static/range {v3 .. v11}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v3

    .line 107
    .end local v12    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v13    # "$i$a$-update-SearchViewModel$clear$1":I
    nop

    .line 108
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    nop

    .line 71
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final download(Lcom/muzk/app/data/RemoteTrack;)V
    .locals 17
    .param p1, "track"    # Lcom/muzk/app/data/RemoteTrack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "track"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/muzk/app/download/Downloads;->INSTANCE:Lcom/muzk/app/download/Downloads;

    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/ui/search/SearchViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/muzk/app/download/Downloads;->enqueue(Landroid/content/Context;Lcom/muzk/app/data/RemoteTrack;)Lcom/muzk/app/download/Downloads$Enqueued;

    move-result-object v2

    .line 88
    .local v2, "result":Lcom/muzk/app/download/Downloads$Enqueued;
    iget-object v3, v0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v3, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 115
    .local v4, "$i$f$update":I
    :cond_0
    nop

    .line 116
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 117
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object v15, v5

    check-cast v15, Lcom/muzk/app/ui/search/SearchUiState;

    .local v15, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/16 v16, 0x0

    .line 88
    .local v16, "$i$a$-update-SearchViewModel$download$1":I
    invoke-virtual {v15}, Lcom/muzk/app/ui/search/SearchUiState;->getDownloadedIds()Ljava/util/Set;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/data/RemoteTrack;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v15

    invoke-static/range {v6 .. v14}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v6

    .line 117
    .end local v15    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v16    # "$i$a$-update-SearchViewModel$download$1":I
    nop

    .line 118
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    nop

    .line 89
    .end local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    iget-object v3, v0, Lcom/muzk/app/ui/search/SearchViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v4, Lcom/muzk/app/ui/search/SearchEvent$Downloading;

    sget-object v5, Lcom/muzk/app/download/Downloads$Enqueued;->WAITING_WIFI:Lcom/muzk/app/download/Downloads$Enqueued;

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v4, v1, v5}, Lcom/muzk/app/ui/search/SearchEvent$Downloading;-><init>(Lcom/muzk/app/data/RemoteTrack;Z)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public final getEvents()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/muzk/app/ui/search/SearchEvent;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->events:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final getRecentSearches()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->recentSearches:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/ui/search/SearchUiState;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final listen(Lcom/muzk/app/data/RemoteTrack;)V
    .locals 17
    .param p1, "track"    # Lcom/muzk/app/data/RemoteTrack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "track"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v2, v0, Lcom/muzk/app/ui/search/SearchViewModel;->resolveJob:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 76
    :cond_0
    iget-object v2, v0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$f$update":I
    :cond_1
    nop

    .line 111
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 112
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object v15, v5

    check-cast v15, Lcom/muzk/app/ui/search/SearchUiState;

    .local v15, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/16 v16, 0x0

    .line 76
    .local v16, "$i$a$-update-SearchViewModel$listen$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/data/RemoteTrack;->getId()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x2f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v15

    invoke-static/range {v6 .. v14}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v6

    .line 112
    .end local v15    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v16    # "$i$a$-update-SearchViewModel$listen$1":I
    nop

    .line 113
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 114
    nop

    .line 77
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v2, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;

    invoke-direct {v2, v0, v1, v3}, Lcom/muzk/app/ui/search/SearchViewModel$listen$2;-><init>(Lcom/muzk/app/ui/search/SearchViewModel;Lcom/muzk/app/data/RemoteTrack;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/ui/search/SearchViewModel;->resolveJob:Lkotlinx/coroutines/Job;

    .line 83
    return-void
.end method

.method public final removeRecent(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchViewModel;->history:Lcom/muzk/app/data/SearchHistory;

    invoke-virtual {v0, p1}, Lcom/muzk/app/data/SearchHistory;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final search(Ljava/lang/String;)V
    .locals 18
    .param p1, "query"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "query"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "q":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return-void

    .line 53
    :cond_1
    iget-object v3, v0, Lcom/muzk/app/ui/search/SearchViewModel;->searchJob:Lkotlinx/coroutines/Job;

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    invoke-static {v3, v12, v4, v12}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 54
    :cond_2
    iget-object v3, v0, Lcom/muzk/app/ui/search/SearchViewModel;->history:Lcom/muzk/app/data/SearchHistory;

    invoke-virtual {v3, v2}, Lcom/muzk/app/data/SearchHistory;->add(Ljava/lang/String;)V

    .line 55
    iget-object v13, v0, Lcom/muzk/app/ui/search/SearchViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v13, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v14, 0x0

    .line 100
    .local v14, "$i$f$update":I
    :cond_3
    nop

    .line 101
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 102
    .local v15, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lcom/muzk/app/ui/search/SearchUiState;

    .local v16, "it":Lcom/muzk/app/ui/search/SearchUiState;
    const/16 v17, 0x0

    .line 55
    .local v17, "$i$a$-update-SearchViewModel$search$1":I
    const/16 v10, 0x34

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v16

    move-object v4, v2

    invoke-static/range {v3 .. v11}, Lcom/muzk/app/ui/search/SearchUiState;->copy$default(Lcom/muzk/app/ui/search/SearchUiState;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchUiState;

    move-result-object v3

    .line 102
    .end local v16    # "it":Lcom/muzk/app/ui/search/SearchUiState;
    .end local v17    # "$i$a$-update-SearchViewModel$search$1":I
    nop

    .line 103
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v13, v15, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    nop

    .line 56
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    .end local v13    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v14    # "$i$f$update":I
    .end local v15    # "prevValue$iv":Ljava/lang/Object;
    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/ViewModel;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v3, Lcom/muzk/app/ui/search/SearchViewModel$search$2;

    invoke-direct {v3, v2, v0, v12}, Lcom/muzk/app/ui/search/SearchViewModel$search$2;-><init>(Ljava/lang/String;Lcom/muzk/app/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v3

    iput-object v3, v0, Lcom/muzk/app/ui/search/SearchViewModel;->searchJob:Lkotlinx/coroutines/Job;

    .line 63
    return-void
.end method
