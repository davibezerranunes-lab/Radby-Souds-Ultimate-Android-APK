.class public final Lcom/muzk/app/ui/home/HomeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "HomeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/ui/home/HomeViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000cJ\u0006\u0010\u001a\u001a\u00020\u001bR\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/muzk/app/ui/home/HomeViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "tracks",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/muzk/app/data/LocalTrack;",
        "permission",
        "Lkotlin/Pair;",
        "",
        "askedPermission",
        "getAskedPermission",
        "()Z",
        "setAskedPermission",
        "(Z)V",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/muzk/app/ui/home/HomeUiState;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "setPermission",
        "",
        "granted",
        "reload",
        "Lkotlinx/coroutines/Job;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/muzk/app/ui/home/HomeViewModel$Companion;

.field public static final TILE_COUNT:I = 0x4

.field public static final TOP_COUNT:I = 0x5


# instance fields
.field private askedPermission:Z

.field private final permission:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/ui/home/HomeUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/ui/home/HomeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/home/HomeViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/ui/home/HomeViewModel;->Companion:Lcom/muzk/app/ui/home/HomeViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 11
    .param p1, "app"    # Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->tracks:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->permission:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 75
    nop

    .line 45
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->tracks:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    sget-object v1, Lcom/muzk/app/data/PlaylistStore;->Companion:Lcom/muzk/app/data/PlaylistStore$Companion;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/muzk/app/data/PlaylistStore$Companion;->get(Landroid/content/Context;)Lcom/muzk/app/data/PlaylistStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/PlaylistStore;->getPlaylists()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    sget-object v2, Lcom/muzk/app/data/PlayStats;->Companion:Lcom/muzk/app/data/PlayStats$Companion;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/muzk/app/data/PlayStats$Companion;->get(Landroid/content/Context;)Lcom/muzk/app/data/PlayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/data/PlayStats;->getCounts()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p0, Lcom/muzk/app/ui/home/HomeViewModel;->permission:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    .line 44
    new-instance v4, Lcom/muzk/app/ui/home/HomeViewModel$state$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/muzk/app/ui/home/HomeViewModel$state$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function5;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 75
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    new-instance v10, Lcom/muzk/app/ui/home/HomeUiState;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/muzk/app/ui/home/HomeUiState;-><init>(ZZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1, v2, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 38
    return-void
.end method

.method public static final synthetic access$getPermission$p(Lcom/muzk/app/ui/home/HomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/home/HomeViewModel;

    .line 38
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->permission:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$getTracks$p(Lcom/muzk/app/ui/home/HomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/home/HomeViewModel;

    .line 38
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->tracks:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getAskedPermission()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->askedPermission:Z

    return v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/ui/home/HomeUiState;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final reload()Lkotlinx/coroutines/Job;
    .locals 7

    .line 82
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/muzk/app/ui/home/HomeViewModel$reload$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muzk/app/ui/home/HomeViewModel$reload$1;-><init>(Lcom/muzk/app/ui/home/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final setAskedPermission(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/muzk/app/ui/home/HomeViewModel;->askedPermission:Z

    return-void
.end method

.method public final setPermission(Z)V
    .locals 3
    .param p1, "granted"    # Z

    .line 78
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeViewModel;->permission:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/muzk/app/ui/home/HomeViewModel;->permission:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/muzk/app/ui/home/HomeViewModel;->reload()Lkotlinx/coroutines/Job;

    .line 80
    :cond_0
    return-void
.end method
