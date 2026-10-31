.class public final Lcom/muzk/app/playback/PlayerViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "PlayerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerViewModel.kt\ncom/muzk/app/playback/PlayerViewModel\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n230#2,5:154\n230#2,3:159\n233#2,2:163\n230#2,5:167\n1#3:162\n1863#4,2:165\n*S KotlinDebug\n*F\n+ 1 PlayerViewModel.kt\ncom/muzk/app/playback/PlayerViewModel\n*L\n108#1:154,5\n113#1:159,3\n113#1:163,2\n78#1:167,5\n68#1:165,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0019\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u001b\u001a\u00020\u00122\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J*\u0010\u001d\u001a\u00020\u00122\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$J\u000e\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020 J\u0006\u0010\'\u001a\u00020\u0012J\u0006\u0010(\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0012J\u000e\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u0012J\u0006\u0010.\u001a\u00020\u0012J\u0006\u0010/\u001a\u00020\u0012J\u0010\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u000202H\u0002J\u0008\u00103\u001a\u00020\u0012H\u0002J\u0008\u00104\u001a\u00020\u0012H\u0014R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00120\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0015\u001a\r\u0012\t\u0012\u00070\u000e\u00a2\u0006\u0002\u0008\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001a\u00a8\u00065"
    }
    d2 = {
        "Lcom/muzk/app/playback/PlayerViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/muzk/app/playback/PlayerUiState;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "controller",
        "Landroidx/media3/session/MediaController;",
        "pending",
        "",
        "Lkotlin/Function1;",
        "",
        "ticker",
        "Lkotlinx/coroutines/Job;",
        "controllerFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "listener",
        "com/muzk/app/playback/PlayerViewModel$listener$1",
        "Lcom/muzk/app/playback/PlayerViewModel$listener$1;",
        "withController",
        "block",
        "playQueue",
        "items",
        "",
        "Landroidx/media3/common/MediaItem;",
        "startIndex",
        "",
        "source",
        "",
        "playNext",
        "item",
        "togglePlay",
        "next",
        "previous",
        "seekTo",
        "ms",
        "",
        "toggleShuffle",
        "cycleRepeat",
        "clearError",
        "sync",
        "p",
        "Landroidx/media3/common/Player;",
        "startTicker",
        "onCleared",
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
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/muzk/app/playback/PlayerUiState;",
            ">;"
        }
    .end annotation
.end field

.field private controller:Landroidx/media3/session/MediaController;

.field private final controllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/muzk/app/playback/PlayerViewModel$listener$1;

.field private final pending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/media3/session/MediaController;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/playback/PlayerUiState;",
            ">;"
        }
    .end annotation
.end field

.field private ticker:Lkotlinx/coroutines/Job;


# direct methods
.method public static synthetic $r8$lambda$6RargmCfIsdqRP52SmqSkxyaYRM(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/playback/PlayerViewModel;->cycleRepeat$lambda$11(Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C-HZc3KhB4q-0mDKDwLfiV6-c6M(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/playback/PlayerViewModel;->playNext$lambda$5(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EpTpKaW1N5M8Frrp0oNvYeXfmPc(JLandroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/playback/PlayerViewModel;->seekTo$lambda$9(JLandroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JFhCDR08_JVn7JWiEitSsL2IW9g(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/muzk/app/playback/PlayerViewModel;->playQueue$lambda$4(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PF9wSnwTvSmBgUuPy3_jyR_RmDc(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/playback/PlayerViewModel;->toggleShuffle$lambda$10(Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TNnlMbAfKq75zPAenldvTJ1pVeg(Lcom/muzk/app/playback/PlayerViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/playback/PlayerViewModel;->_init_$lambda$2(Lcom/muzk/app/playback/PlayerViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d3s-30IFxPhzf0jtkbJYVWarYng(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/playback/PlayerViewModel;->next$lambda$7(Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ekVEToDegGCTXfwYLiwX43vovJw(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/playback/PlayerViewModel;->togglePlay$lambda$6(Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$raLslAHoLcgz2sG8Ryox2Pa2zCU(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/playback/PlayerViewModel;->previous$lambda$8(Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 23
    .param p1, "app"    # Landroid/app/Application;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 47
    new-instance v2, Lcom/muzk/app/playback/PlayerUiState;

    move-object v3, v2

    const/16 v21, 0x7fff

    const/16 v22, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/muzk/app/playback/PlayerUiState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 48
    iget-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->pending:Ljava/util/List;

    .line 56
    nop

    .line 54
    new-instance v2, Landroidx/media3/session/MediaController$Builder;

    .line 55
    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    new-instance v4, Landroidx/media3/session/SessionToken;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    new-instance v6, Landroid/content/ComponentName;

    move-object v7, v1

    check-cast v7, Landroid/content/Context;

    const-class v8, Lcom/muzk/app/playback/PlaybackService;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Landroidx/media3/session/SessionToken;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 54
    invoke-direct {v2, v3, v4}, Landroidx/media3/session/MediaController$Builder;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V

    .line 56
    invoke-virtual {v2}, Landroidx/media3/session/MediaController$Builder;->buildAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    const-string v3, "buildAsync(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->controllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 58
    new-instance v2, Lcom/muzk/app/playback/PlayerViewModel$listener$1;

    invoke-direct {v2, v0}, Lcom/muzk/app/playback/PlayerViewModel$listener$1;-><init>(Lcom/muzk/app/playback/PlayerViewModel;)V

    iput-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->listener:Lcom/muzk/app/playback/PlayerViewModel$listener$1;

    .line 62
    nop

    .line 63
    iget-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->controllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/muzk/app/playback/PlayerViewModel;)V

    .line 70
    move-object v4, v1

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 63
    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 71
    nop

    .line 45
    return-void
.end method

.method private static final _init_$lambda$2(Lcom/muzk/app/playback/PlayerViewModel;)V
    .locals 7
    .param p0, "this$0"    # Lcom/muzk/app/playback/PlayerViewModel;

    .line 64
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    .line 162
    .local v0, "$this$lambda_u242_u24lambda_u240":Lcom/muzk/app/playback/PlayerViewModel;
    const/4 v1, 0x0

    .line 64
    .local v1, "$i$a$-runCatching-PlayerViewModel$1$c$1":I
    iget-object v2, v0, Lcom/muzk/app/playback/PlayerViewModel;->controllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaController;

    .end local v0    # "$this$lambda_u242_u24lambda_u240":Lcom/muzk/app/playback/PlayerViewModel;
    .end local v1    # "$i$a$-runCatching-PlayerViewModel$1$c$1":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroidx/media3/session/MediaController;

    if-nez v0, :cond_1

    return-void

    .line 65
    .local v0, "c":Landroidx/media3/session/MediaController;
    :cond_1
    iput-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->controller:Landroidx/media3/session/MediaController;

    .line 66
    iget-object v1, p0, Lcom/muzk/app/playback/PlayerViewModel;->listener:Lcom/muzk/app/playback/PlayerViewModel$listener$1;

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 67
    move-object v1, v0

    check-cast v1, Landroidx/media3/common/Player;

    invoke-direct {p0, v1}, Lcom/muzk/app/playback/PlayerViewModel;->sync(Landroidx/media3/common/Player;)V

    .line 68
    iget-object v1, p0, Lcom/muzk/app/playback/PlayerViewModel;->pending:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .local v5, "it":Lkotlin/jvm/functions/Function1;
    const/4 v6, 0x0

    .line 68
    .local v6, "$i$a$-forEach-PlayerViewModel$1$1":I
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v5    # "it":Lkotlin/jvm/functions/Function1;
    .end local v6    # "$i$a$-forEach-PlayerViewModel$1$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 166
    :cond_2
    nop

    .line 69
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Lcom/muzk/app/playback/PlayerViewModel;->pending:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/muzk/app/playback/PlayerViewModel;)Landroidx/media3/session/MediaController;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/playback/PlayerViewModel;

    .line 45
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->controller:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Lcom/muzk/app/playback/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/playback/PlayerViewModel;

    .line 45
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$sync(Lcom/muzk/app/playback/PlayerViewModel;Landroidx/media3/common/Player;)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/playback/PlayerViewModel;
    .param p1, "p"    # Landroidx/media3/common/Player;

    .line 45
    invoke-direct {p0, p1}, Lcom/muzk/app/playback/PlayerViewModel;->sync(Landroidx/media3/common/Player;)V

    return-void
.end method

.method private static final cycleRepeat$lambda$11(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v0, 0x2

    .line 101
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaController;->setRepeatMode(I)V

    .line 106
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final next$lambda$7(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->seekToNext()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final playNext$lambda$5(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$item"    # Landroidx/media3/common/MediaItem;
    .param p1, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaController;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 88
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->prepare()V

    .line 89
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->play()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->getCurrentMediaItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroidx/media3/session/MediaController;->addMediaItem(ILandroidx/media3/common/MediaItem;)V

    .line 93
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic playQueue$default(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 77
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/muzk/app/playback/PlayerViewModel;->playQueue(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method private static final playQueue$lambda$4(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 27
    .param p0, "this$0"    # Lcom/muzk/app/playback/PlayerViewModel;
    .param p1, "$items"    # Ljava/util/List;
    .param p2, "$startIndex"    # I
    .param p3, "$source"    # Ljava/lang/String;
    .param p4, "it"    # Landroidx/media3/session/MediaController;

    move-object/from16 v0, p4

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/muzk/app/playback/PlayerViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v3, 0x0

    .line 167
    .local v3, "$i$f$update":I
    :goto_0
    nop

    .line 168
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 169
    .local v4, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v25, v4

    check-cast v25, Lcom/muzk/app/playback/PlayerUiState;

    .local v25, "s":Lcom/muzk/app/playback/PlayerUiState;
    move-object/from16 v5, v25

    const/16 v26, 0x0

    .line 78
    .local v26, "$i$a$-update-PlayerViewModel$playQueue$1$1":I
    const/16 v23, 0x6fff

    const/16 v24, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, p3

    invoke-static/range {v5 .. v24}, Lcom/muzk/app/playback/PlayerUiState;->copy$default(Lcom/muzk/app/playback/PlayerUiState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/playback/PlayerUiState;

    move-result-object v5

    .line 169
    .end local v25    # "s":Lcom/muzk/app/playback/PlayerUiState;
    .end local v26    # "$i$a$-update-PlayerViewModel$playQueue$1$1":I
    nop

    .line 170
    .local v5, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    nop

    .line 79
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v4    # "prevValue$iv":Ljava/lang/Object;
    .end local v5    # "nextValue$iv":Ljava/lang/Object;
    const-wide/16 v2, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual {v0, v6, v7, v2, v3}, Landroidx/media3/session/MediaController;->setMediaItems(Ljava/util/List;IJ)V

    .line 80
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/session/MediaController;->prepare()V

    .line 81
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/session/MediaController;->play()V

    .line 82
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 170
    .restart local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v3    # "$i$f$update":I
    .restart local v4    # "prevValue$iv":Ljava/lang/Object;
    .restart local v5    # "nextValue$iv":Ljava/lang/Object;
    :cond_0
    move-object/from16 v6, p1

    move/from16 v7, p2

    goto :goto_0
.end method

.method private static final previous$lambda$8(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->seekToPrevious()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final seekTo$lambda$9(JLandroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$ms"    # J
    .param p2, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaController;->seekTo(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final startTicker()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->ticker:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 137
    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muzk/app/playback/PlayerViewModel$startTicker$1;-><init>(Lcom/muzk/app/playback/PlayerViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->ticker:Lkotlinx/coroutines/Job;

    .line 145
    return-void
.end method

.method private final sync(Landroidx/media3/common/Player;)V
    .locals 37
    .param p1, "p"    # Landroidx/media3/common/Player;

    .line 111
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 112
    .local v1, "item":Landroidx/media3/common/MediaItem;
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    const-string v3, "getMediaMetadata(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .local v2, "meta":Landroidx/media3/common/MediaMetadata;
    iget-object v3, v0, Lcom/muzk/app/playback/PlayerViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v3, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$f$update":I
    :goto_0
    nop

    .line 160
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 161
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v26, v5

    check-cast v26, Lcom/muzk/app/playback/PlayerUiState;

    .local v26, "it":Lcom/muzk/app/playback/PlayerUiState;
    const/16 v27, 0x0

    .line 114
    .local v27, "$i$a$-update-PlayerViewModel$sync$1":I
    nop

    .line 115
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 116
    :goto_1
    iget-object v8, v2, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const-string v9, ""

    if-nez v8, :cond_2

    move-object v8, v9

    .line 117
    :cond_2
    iget-object v10, v2, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_4

    move-object v10, v9

    .line 118
    :cond_4
    if-eqz v1, :cond_5

    iget-object v11, v1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    iget-object v12, v2, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-static {v11, v12}, Lcom/muzk/app/data/ModelsKt;->coverModel(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v11

    .line 119
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v12

    .line 120
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 121
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v17

    .line 122
    move/from16 v20, v7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v6

    move/from16 v23, v14

    const-wide/16 v13, 0x0

    invoke-static {v6, v7, v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v28

    .line 123
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v30

    .line 124
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v31

    .line 125
    if-eqz v1, :cond_7

    iget-object v6, v1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    move-object/from16 v32, v6

    goto :goto_6

    :cond_7
    const/16 v32, 0x0

    .line 126
    :goto_6
    if-eqz v1, :cond_8

    iget-object v6, v1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v7, "http"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v7, v13, v15, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_9

    move/from16 v22, v15

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    :cond_9
    move/from16 v22, v13

    .line 114
    :goto_7
    nop

    .line 127
    iget-object v6, v2, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_a
    move-object v6, v14

    :goto_8
    if-nez v6, :cond_b

    move-object/from16 v33, v9

    goto :goto_9

    :cond_b
    move-object/from16 v33, v6

    .line 128
    :goto_9
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 162
    nop

    .local v6, "e":Landroidx/media3/common/PlaybackException;
    const/4 v7, 0x0

    .line 128
    .local v7, "$i$a$-let-PlayerViewModel$sync$1$1":I
    invoke-virtual {v6}, Landroidx/media3/common/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "N\u00e3o consegui tocar: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "e":Landroidx/media3/common/PlaybackException;
    .end local v7    # "$i$a$-let-PlayerViewModel$sync$1$1":I
    if-nez v6, :cond_d

    :cond_c
    invoke-virtual/range {v26 .. v26}, Lcom/muzk/app/playback/PlayerUiState;->getError()Ljava/lang/String;

    move-result-object v6

    :cond_d
    move-object/from16 v34, v6

    .line 114
    const/16 v24, 0x1000

    const/16 v25, 0x0

    const/16 v21, 0x0

    move-object/from16 v6, v26

    move/from16 v7, v20

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move/from16 v12, v23

    move-object/from16 v35, v1

    const/4 v1, 0x0

    .end local v1    # "item":Landroidx/media3/common/MediaItem;
    .local v35, "item":Landroidx/media3/common/MediaItem;
    move-wide/from16 v13, v17

    move-object/from16 v36, v2

    move v2, v15

    .end local v2    # "meta":Landroidx/media3/common/MediaMetadata;
    .local v36, "meta":Landroidx/media3/common/MediaMetadata;
    move-wide/from16 v15, v28

    move/from16 v17, v30

    move/from16 v18, v31

    move-object/from16 v19, v32

    move/from16 v20, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    invoke-static/range {v6 .. v25}, Lcom/muzk/app/playback/PlayerUiState;->copy$default(Lcom/muzk/app/playback/PlayerUiState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/playback/PlayerUiState;

    move-result-object v6

    .line 129
    nop

    .line 161
    .end local v26    # "it":Lcom/muzk/app/playback/PlayerUiState;
    .end local v27    # "$i$a$-update-PlayerViewModel$sync$1":I
    nop

    .line 163
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 164
    nop

    .line 131
    .end local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/muzk/app/playback/PlayerViewModel;->startTicker()V

    goto :goto_a

    :cond_e
    iget-object v3, v0, Lcom/muzk/app/playback/PlayerViewModel;->ticker:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_f

    invoke-static {v3, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 132
    :cond_f
    :goto_a
    return-void

    .line 163
    .restart local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v4    # "$i$f$update":I
    .restart local v5    # "prevValue$iv":Ljava/lang/Object;
    .restart local v6    # "nextValue$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v1, v35

    move-object/from16 v2, v36

    goto/16 :goto_0
.end method

.method private static final togglePlay$lambda$6(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 2
    .param p0, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->prepare()V

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->play()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final toggleShuffle$lambda$10(Landroidx/media3/session/MediaController;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/media3/session/MediaController;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getShuffleModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaController;->setShuffleModeEnabled(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final withController(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/media3/session/MediaController;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->controller:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->pending:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearError()V
    .locals 26

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muzk/app/playback/PlayerViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$f$update":I
    :cond_0
    nop

    .line 155
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v24, v3

    check-cast v24, Lcom/muzk/app/playback/PlayerUiState;

    .local v24, "it":Lcom/muzk/app/playback/PlayerUiState;
    move-object/from16 v4, v24

    const/16 v25, 0x0

    .line 108
    .local v25, "$i$a$-update-PlayerViewModel$clearError$1":I
    const/16 v22, 0x3fff

    const/16 v23, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v4 .. v23}, Lcom/muzk/app/playback/PlayerUiState;->copy$default(Lcom/muzk/app/playback/PlayerUiState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/playback/PlayerUiState;

    move-result-object v4

    .line 156
    .end local v24    # "it":Lcom/muzk/app/playback/PlayerUiState;
    .end local v25    # "$i$a$-update-PlayerViewModel$clearError$1":I
    nop

    .line 157
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    nop

    .line 108
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final cycleRepeat()V
    .locals 1

    .line 100
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    .line 106
    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/playback/PlayerUiState;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final next()V
    .locals 1

    .line 96
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->controller:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/muzk/app/playback/PlayerViewModel;->listener:Lcom/muzk/app/playback/PlayerViewModel$listener$1;

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel;->controllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-static {v0}, Landroidx/media3/session/MediaController;->releaseFuture(Ljava/util/concurrent/Future;)V

    .line 150
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 151
    return-void
.end method

.method public final playNext(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "item"    # Landroidx/media3/common/MediaItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    .line 93
    return-void
.end method

.method public final playQueue(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .param p2, "startIndex"    # I
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    .line 82
    return-void
.end method

.method public final previous()V
    .locals 1

    .line 97
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1
    .param p1, "ms"    # J

    .line 98
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda7;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final togglePlay()V
    .locals 1

    .line 95
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final toggleShuffle()V
    .locals 1

    .line 99
    new-instance v0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v0}, Lcom/muzk/app/playback/PlayerViewModel;->withController(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
