.class public final Lcom/muzk/app/ui/library/LibraryViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "LibraryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryViewModel.kt\ncom/muzk/app/ui/library/LibraryViewModel\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,175:1\n230#2,5:176\n230#2,5:181\n230#2,5:186\n230#2,5:191\n230#2,5:196\n230#2,5:205\n230#2,5:210\n1557#3:201\n1628#3,3:202\n1863#3,2:215\n1863#3,2:217\n1202#3,2:219\n1230#3,4:221\n1628#3,3:225\n774#3:228\n865#3,2:229\n1628#3,3:232\n1485#3:235\n1510#3,3:236\n1513#3,3:246\n1053#3:253\n295#3,2:254\n1611#3,9:256\n1863#3:265\n1864#3:267\n1620#3:268\n1628#3,3:269\n1628#3,2:272\n1782#3,4:274\n1630#3:278\n774#3:279\n865#3,2:280\n1#4:231\n1#4:266\n381#5,7:239\n126#6:249\n153#6,3:250\n*S KotlinDebug\n*F\n+ 1 LibraryViewModel.kt\ncom/muzk/app/ui/library/LibraryViewModel\n*L\n69#1:176,5\n83#1:181,5\n85#1:186,5\n86#1:191,5\n89#1:196,5\n95#1:205,5\n104#1:210,5\n94#1:201\n94#1:202,3\n116#1:215,2\n117#1:217,2\n120#1:219,2\n120#1:221,4\n127#1:225,3\n130#1:228\n130#1:229,2\n132#1:232,3\n135#1:235\n135#1:236,3\n135#1:246,3\n137#1:253\n141#1:254,2\n143#1:256,9\n143#1:265\n143#1:267\n143#1:268\n145#1:269,3\n148#1:272,2\n149#1:274,4\n148#1:278\n154#1:279\n154#1:280,2\n143#1:266\n135#1:239,7\n136#1:249\n136#1:250,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020!J\u000e\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\u0017J\u0006\u0010\'\u001a\u00020\u0017J\u0006\u0010(\u001a\u00020\u0019J\u000e\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020!J\u0016\u00100\u001a\u00020\u00172\u0006\u0010#\u001a\u00020!2\u0006\u0010/\u001a\u00020!J\u000e\u00101\u001a\u00020\u00172\u0006\u0010#\u001a\u00020!J\u0016\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010J\u0016\u00104\u001a\u00020\u00172\u0006\u00103\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010J\u001c\u00105\u001a\u00020\u00172\u0006\u00103\u001a\u00020!2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nJ\u001c\u00107\u001a\u00020\u00172\u0006\u00103\u001a\u00020!2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nJ:\u00108\u001a\u00020\u00132\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020;0\n2\u0006\u0010<\u001a\u00020\r2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010)\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006>"
    }
    d2 = {
        "Lcom/muzk/app/ui/library/LibraryViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "store",
        "Lcom/muzk/app/data/PlaylistStore;",
        "tracks",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/muzk/app/data/LocalTrack;",
        "nav",
        "Lcom/muzk/app/ui/library/Nav;",
        "selection",
        "",
        "",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/muzk/app/ui/library/LibraryUiState;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "setPermission",
        "",
        "granted",
        "",
        "reload",
        "Lkotlinx/coroutines/Job;",
        "selectTab",
        "tab",
        "Lcom/muzk/app/ui/library/LibraryTab;",
        "openFolder",
        "path",
        "",
        "openPlaylist",
        "id",
        "toggleSelection",
        "trackId",
        "clearSelection",
        "selectAll",
        "back",
        "askedPermission",
        "getAskedPermission",
        "()Z",
        "setAskedPermission",
        "(Z)V",
        "createPlaylist",
        "name",
        "renamePlaylist",
        "deletePlaylist",
        "addToPlaylist",
        "playlistId",
        "removeFromPlaylist",
        "addAllToPlaylist",
        "trackIds",
        "removeAllFromPlaylist",
        "build",
        "all",
        "playlists",
        "Lcom/muzk/app/data/Playlist;",
        "n",
        "sel",
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
.field private askedPermission:Z

.field private final nav:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/muzk/app/ui/library/Nav;",
            ">;"
        }
    .end annotation
.end field

.field private final selection:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/ui/library/LibraryUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lcom/muzk/app/data/PlaylistStore;

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
.method public constructor <init>(Landroid/app/Application;)V
    .locals 19
    .param p1, "app"    # Landroid/app/Application;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 59
    sget-object v2, Lcom/muzk/app/data/PlaylistStore;->Companion:Lcom/muzk/app/data/PlaylistStore$Companion;

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/muzk/app/data/PlaylistStore$Companion;->get(Landroid/content/Context;)Lcom/muzk/app/data/PlaylistStore;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->tracks:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 61
    new-instance v2, Lcom/muzk/app/ui/library/Nav;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/muzk/app/ui/library/Nav;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 62
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->selection:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 66
    nop

    .line 65
    iget-object v2, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->tracks:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    iget-object v3, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v3}, Lcom/muzk/app/data/PlaylistStore;->getPlaylists()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v4, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->selection:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    new-instance v6, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;

    invoke-direct {v6, v0, v7}, Lcom/muzk/app/ui/library/LibraryViewModel$state$1;-><init>(Lcom/muzk/app/ui/library/LibraryViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function5;

    invoke-static {v2, v3, v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 66
    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/ViewModel;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v9, 0x2

    const-wide/16 v5, 0x1388

    const-wide/16 v7, 0x0

    invoke-static/range {v4 .. v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    new-instance v15, Lcom/muzk/app/ui/library/LibraryUiState;

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Lcom/muzk/app/ui/library/LibraryUiState;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v18

    invoke-static {v2, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/muzk/app/ui/library/LibraryViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 57
    return-void
.end method

.method public static final synthetic access$build(Lcom/muzk/app/ui/library/LibraryViewModel;Ljava/util/List;Ljava/util/List;Lcom/muzk/app/ui/library/Nav;Ljava/util/Set;)Lcom/muzk/app/ui/library/LibraryUiState;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryViewModel;
    .param p1, "all"    # Ljava/util/List;
    .param p2, "playlists"    # Ljava/util/List;
    .param p3, "n"    # Lcom/muzk/app/ui/library/Nav;
    .param p4, "sel"    # Ljava/util/Set;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/library/LibraryViewModel;->build(Ljava/util/List;Ljava/util/List;Lcom/muzk/app/ui/library/Nav;Ljava/util/Set;)Lcom/muzk/app/ui/library/LibraryUiState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getNav$p(Lcom/muzk/app/ui/library/LibraryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryViewModel;

    .line 57
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$getTracks$p(Lcom/muzk/app/ui/library/LibraryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryViewModel;

    .line 57
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->tracks:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final build(Ljava/util/List;Ljava/util/List;Lcom/muzk/app/ui/library/Nav;Ljava/util/Set;)Lcom/muzk/app/ui/library/LibraryUiState;
    .locals 24
    .param p1, "all"    # Ljava/util/List;
    .param p2, "playlists"    # Ljava/util/List;
    .param p3, "n"    # Lcom/muzk/app/ui/library/Nav;
    .param p4, "sel"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;",
            "Lcom/muzk/app/ui/library/Nav;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/muzk/app/ui/library/LibraryUiState;"
        }
    .end annotation

    .line 120
    move-object/from16 v10, p4

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 219
    .local v1, "$i$f$associateBy":I
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 220
    .local v2, "capacity$iv":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 221
    .local v5, "$i$f$associateByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 222
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/muzk/app/data/LocalTrack;

    .local v8, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v9, 0x0

    .line 120
    .local v9, "$i$a$-associateBy-LibraryViewModel$build$byId$1":I
    invoke-virtual {v8}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v8

    .end local v8    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v9    # "$i$a$-associateBy-LibraryViewModel$build$byId$1":I
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 222
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 220
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateByTo":I
    nop

    .line 120
    .end local v0    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$associateBy":I
    .end local v2    # "capacity$iv":I
    move-object v11, v3

    .line 121
    .local v11, "byId":Ljava/util/Map;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 122
    .local v12, "rows":Ljava/util/List;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "queue":Ljava/util/List;
    nop

    .line 125
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v1

    sget-object v2, Lcom/muzk/app/ui/library/LibraryTab;->TRACKS:Lcom/muzk/app/ui/library/LibraryTab;

    if-ne v1, v2, :cond_2

    .line 126
    move-object/from16 v0, p1

    .line 127
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapTo$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 225
    .local v2, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v12

    check-cast v5, Ljava/util/Collection;

    move-object v6, v4

    check-cast v6, Lcom/muzk/app/data/LocalTrack;

    .local v6, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v7, 0x0

    .line 127
    .local v7, "$i$a$-mapTo-LibraryViewModel$build$1":I
    new-instance v8, Lcom/muzk/app/ui/library/LibraryRow$Track;

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-direct/range {v13 .. v19}, Lcom/muzk/app/ui/library/LibraryRow$Track;-><init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 226
    .end local v6    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v7    # "$i$a$-mapTo-LibraryViewModel$build$1":I
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v4    # "item$iv":Ljava/lang/Object;
    :cond_1
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v16, v0

    .end local v1    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapTo":I
    goto/16 :goto_e

    .line 129
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v1

    sget-object v2, Lcom/muzk/app/ui/library/LibraryTab;->FOLDERS:Lcom/muzk/app/ui/library/LibraryTab;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getFolder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 130
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 228
    .local v2, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 229
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/muzk/app/data/LocalTrack;

    .local v9, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v13, 0x0

    .line 130
    .local v13, "$i$a$-filter-LibraryViewModel$build$2":I
    invoke-virtual {v9}, Lcom/muzk/app/data/LocalTrack;->getFolderPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getFolder()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 229
    .end local v9    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v13    # "$i$a$-filter-LibraryViewModel$build$2":I
    if-eqz v9, :cond_3

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 228
    nop

    .line 130
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    move-object v0, v4

    .line 131
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getFolder()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/4 v5, 0x2

    invoke-static {v2, v4, v3, v5, v3}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-ifBlank-LibraryViewModel$build$3":I
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getFolder()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-ifBlank-LibraryViewModel$build$3":I
    :cond_5
    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/muzk/app/ui/library/LibraryRow$Header;

    invoke-direct {v3, v2}, Lcom/muzk/app/ui/library/LibraryRow$Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapTo$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 232
    .local v2, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v12

    check-cast v5, Ljava/util/Collection;

    move-object v6, v4

    check-cast v6, Lcom/muzk/app/data/LocalTrack;

    .local v6, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v7, 0x0

    .line 132
    .local v7, "$i$a$-mapTo-LibraryViewModel$build$4":I
    new-instance v8, Lcom/muzk/app/ui/library/LibraryRow$Track;

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-direct/range {v13 .. v19}, Lcom/muzk/app/ui/library/LibraryRow$Track;-><init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    .end local v6    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v7    # "$i$a$-mapTo-LibraryViewModel$build$4":I
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    .end local v4    # "item$iv":Ljava/lang/Object;
    :cond_6
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v16, v0

    .end local v1    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapTo":I
    goto/16 :goto_e

    .line 134
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v1

    sget-object v2, Lcom/muzk/app/ui/library/LibraryTab;->FOLDERS:Lcom/muzk/app/ui/library/LibraryTab;

    if-ne v1, v2, :cond_b

    .line 135
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 235
    .local v2, "$i$f$groupBy":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .restart local v3    # "destination$iv$iv":Ljava/util/Map;
    move-object v4, v1

    .local v4, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 236
    .local v5, "$i$f$groupByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 237
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/muzk/app/data/LocalTrack;

    .local v8, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v9, 0x0

    .line 135
    .local v9, "$i$a$-groupBy-LibraryViewModel$build$5":I
    invoke-virtual {v8}, Lcom/muzk/app/data/LocalTrack;->getFolderPath()Ljava/lang/String;

    move-result-object v8

    .line 237
    .end local v8    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v9    # "$i$a$-groupBy-LibraryViewModel$build$5":I
    nop

    .line 238
    .local v8, "key$iv$iv":Ljava/lang/Object;
    move-object v9, v3

    .local v9, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 239
    .local v13, "$i$f$getOrPut":I
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 240
    .local v14, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v14, :cond_8

    .line 241
    const/4 v15, 0x0

    .line 238
    .local v15, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/List;

    .line 241
    .end local v15    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object/from16 v15, v16

    .line 242
    .local v15, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    nop

    .end local v15    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_5

    .line 245
    :cond_8
    move-object v15, v14

    .line 240
    :goto_5
    nop

    .line 238
    .end local v9    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v13    # "$i$f$getOrPut":I
    .end local v14    # "value$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v15

    check-cast v9, Ljava/util/List;

    .line 246
    .local v9, "list$iv$iv":Ljava/util/List;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 248
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "key$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Ljava/util/List;
    :cond_9
    nop

    .line 235
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$groupByTo":I
    nop

    .line 136
    .end local v1    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$groupBy":I
    move-object v1, v3

    .local v1, "$this$map$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 249
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 250
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 251
    .local v7, "item$iv$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 136
    .local v8, "$i$a$-map-LibraryViewModel$build$6":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "path":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .local v13, "list":Ljava/util/List;
    new-instance v14, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/muzk/app/data/LocalTrack;

    invoke-virtual {v15}, Lcom/muzk/app/data/LocalTrack;->getFolderName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "queue":Ljava/util/List;
    .local v16, "queue":Ljava/util/List;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v14, v9, v15, v0}, Lcom/muzk/app/ui/library/LibraryRow$Folder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    .end local v8    # "$i$a$-map-LibraryViewModel$build$6":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v13    # "list":Ljava/util/List;
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto :goto_6

    .line 252
    .end local v7    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v16    # "queue":Ljava/util/List;
    .restart local v0    # "queue":Ljava/util/List;
    :cond_a
    move-object/from16 v16, v0

    .end local v0    # "queue":Ljava/util/List;
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$mapTo":I
    .restart local v16    # "queue":Ljava/util/List;
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 249
    nop

    .end local v1    # "$this$map$iv":Ljava/util/Map;
    .end local v2    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 137
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 253
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lcom/muzk/app/ui/library/LibraryViewModel$build$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/muzk/app/ui/library/LibraryViewModel$build$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 138
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    check-cast v0, Ljava/util/Collection;

    .line 231
    .local v0, "p0":Ljava/util/Collection;
    const/4 v1, 0x0

    .local v1, "$i$f$build$stub_for_inlining":I
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-let-LibraryViewModel$build$8":I
    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .end local v0    # "p0":Ljava/util/Collection;
    .end local v1    # "$i$f$build$stub_for_inlining":I
    .end local v2    # "$i$a$-let-LibraryViewModel$build$8":I
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto/16 :goto_e

    .line 140
    .end local v16    # "queue":Ljava/util/List;
    .local v0, "queue":Ljava/util/List;
    :cond_b
    move-object/from16 v16, v0

    .end local v0    # "queue":Ljava/util/List;
    .restart local v16    # "queue":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 141
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 254
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/muzk/app/data/Playlist;

    .local v5, "it":Lcom/muzk/app/data/Playlist;
    const/4 v6, 0x0

    .line 141
    .local v6, "$i$a$-firstOrNull-LibraryViewModel$build$p$1":I
    invoke-virtual {v5}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getPlaylistId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 254
    .end local v5    # "it":Lcom/muzk/app/data/Playlist;
    .end local v6    # "$i$a$-firstOrNull-LibraryViewModel$build$p$1":I
    if-eqz v5, :cond_c

    move-object v3, v4

    goto :goto_7

    .line 255
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_d
    nop

    .line 141
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_7
    move-object v0, v3

    check-cast v0, Lcom/muzk/app/data/Playlist;

    .line 142
    .local v0, "p":Lcom/muzk/app/data/Playlist;
    if-eqz v0, :cond_11

    .line 143
    invoke-virtual {v0}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 256
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 264
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 265
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v9

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 264
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v13

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    .local v17, "p0":J
    const/4 v15, 0x0

    .local v15, "$i$f$build$stub_for_inlining$19":I
    const/16 v19, 0x0

    .line 143
    .local v19, "$i$a$-mapNotNull-LibraryViewModel$build$9":I
    move-object/from16 v20, v1

    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v20, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muzk/app/data/LocalTrack;

    .line 264
    .end local v15    # "$i$f$build$stub_for_inlining$19":I
    .end local v17    # "p0":J
    .end local v19    # "$i$a$-mapNotNull-LibraryViewModel$build$9":I
    if-eqz v1, :cond_e

    .line 266
    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 264
    .local v15, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_e
    move-object/from16 v1, v20

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 267
    .end local v20    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_f
    move-object/from16 v20, v1

    .line 268
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    .restart local v20    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 256
    nop

    .line 143
    .end local v2    # "$i$f$mapNotNull":I
    .end local v20    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .line 144
    .end local v16    # "queue":Ljava/util/List;
    .local v1, "queue":Ljava/util/List;
    move-object v2, v12

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lcom/muzk/app/ui/library/LibraryRow$Header;

    invoke-virtual {v0}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/muzk/app/ui/library/LibraryRow$Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapTo$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 269
    .local v3, "$i$f$mapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 270
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v12

    check-cast v6, Ljava/util/Collection;

    move-object v7, v5

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .local v7, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v8, 0x0

    .line 145
    .local v8, "$i$a$-mapTo-LibraryViewModel$build$10":I
    new-instance v9, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v0}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v9

    move-object v14, v7

    invoke-direct/range {v13 .. v19}, Lcom/muzk/app/ui/library/LibraryRow$Track;-><init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 270
    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v8    # "$i$a$-mapTo-LibraryViewModel$build$10":I
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 271
    .end local v5    # "item$iv":Ljava/lang/Object;
    :cond_10
    move-object v2, v12

    check-cast v2, Ljava/util/Collection;

    move-object v0, v1

    .end local v2    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapTo":I
    goto :goto_a

    .line 142
    .end local v1    # "queue":Ljava/util/List;
    .restart local v16    # "queue":Ljava/util/List;
    :cond_11
    move-object/from16 v0, v16

    .line 271
    .end local v16    # "queue":Ljava/util/List;
    .local v0, "queue":Ljava/util/List;
    :goto_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v16, v0

    goto/16 :goto_e

    .line 148
    .end local v0    # "queue":Ljava/util/List;
    .restart local v16    # "queue":Ljava/util/List;
    :cond_12
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapTo$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$f$mapTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "item$iv":Ljava/lang/Object;
    move-object v4, v12

    check-cast v4, Ljava/util/Collection;

    move-object v5, v3

    check-cast v5, Lcom/muzk/app/data/Playlist;

    .local v5, "p":Lcom/muzk/app/data/Playlist;
    const/4 v6, 0x0

    .line 149
    .local v6, "$i$a$-mapTo-LibraryViewModel$build$11":I
    invoke-virtual {v5}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 274
    .local v8, "$i$f$count":I
    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_13

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    move-object/from16 v19, v0

    goto :goto_d

    .line 275
    :cond_13
    const/4 v9, 0x0

    .line 276
    .local v9, "count$iv":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    .local v17, "it":J
    const/4 v15, 0x0

    move-object/from16 v19, v0

    .end local v0    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .local v15, "$i$a$-count-LibraryViewModel$build$11$1":I
    .local v19, "$this$mapTo$iv":Ljava/lang/Iterable;
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 149
    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    .end local v15    # "$i$a$-count-LibraryViewModel$build$11$1":I
    .end local v17    # "it":J
    if-eqz v0, :cond_15

    add-int/lit8 v9, v9, 0x1

    if-gez v9, :cond_14

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_14
    move-object/from16 v0, v19

    goto :goto_c

    .restart local v14    # "element$iv":Ljava/lang/Object;
    :cond_15
    move-object/from16 v0, v19

    goto :goto_c

    .line 277
    .end local v14    # "element$iv":Ljava/lang/Object;
    .end local v19    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$mapTo$iv":Ljava/lang/Iterable;
    :cond_16
    move-object/from16 v19, v0

    .line 149
    .end local v0    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v7    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$count":I
    .end local v9    # "count$iv":I
    .restart local v19    # "$this$mapTo$iv":Ljava/lang/Iterable;
    :goto_d
    new-instance v0, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-direct {v0, v5, v9}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;-><init>(Lcom/muzk/app/data/Playlist;I)V

    .line 273
    .end local v5    # "p":Lcom/muzk/app/data/Playlist;
    .end local v6    # "$i$a$-mapTo-LibraryViewModel$build$11":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    goto :goto_b

    .line 278
    .end local v3    # "item$iv":Ljava/lang/Object;
    .end local v19    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$mapTo$iv":Ljava/lang/Iterable;
    :cond_17
    move-object/from16 v19, v0

    .end local v0    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .restart local v19    # "$this$mapTo$iv":Ljava/lang/Iterable;
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    .line 154
    .end local v1    # "$i$f$mapTo":I
    .end local v19    # "$this$mapTo$iv":Ljava/lang/Iterable;
    :goto_e
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 279
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 280
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .local v7, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v8, 0x0

    .line 154
    .local v8, "$i$a$-filter-LibraryViewModel$build$selected$1":I
    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 280
    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v8    # "$i$a$-filter-LibraryViewModel$build$selected$1":I
    if-eqz v7, :cond_18

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 281
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_19
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 279
    nop

    .line 154
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    move-object v13, v2

    .line 155
    .local v13, "selected":Ljava/util/List;
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_10
    if-ge v0, v1, :cond_1b

    .line 157
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muzk/app/ui/library/LibraryRow;

    .line 158
    .local v2, "r":Lcom/muzk/app/ui/library/LibraryRow;
    instance-of v3, v2, Lcom/muzk/app/ui/library/LibraryRow$Track;

    if-eqz v3, :cond_1a

    move-object/from16 v17, v2

    check-cast v17, Lcom/muzk/app/ui/library/LibraryRow$Track;

    move-object v3, v2

    check-cast v3, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v3}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v23}, Lcom/muzk/app/ui/library/LibraryRow$Track;->copy$default(Lcom/muzk/app/ui/library/LibraryRow$Track;Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/muzk/app/ui/library/LibraryRow$Track;

    move-result-object v3

    invoke-interface {v12, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v2    # "r":Lcom/muzk/app/ui/library/LibraryRow;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 162
    .end local v0    # "i":I
    :cond_1b
    new-instance v14, Lcom/muzk/app/ui/library/LibraryUiState;

    .line 163
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getHasPermission()Z

    move-result v1

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getLoaded()Z

    move-result v2

    .line 165
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v3

    .line 166
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getFolder()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/muzk/app/ui/library/Nav;->getPlaylistId()Ljava/lang/String;

    move-result-object v5

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 162
    move-object v0, v14

    move-object v6, v12

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move-object v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/muzk/app/ui/library/LibraryUiState;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v14
.end method


# virtual methods
.method public final addAllToPlaylist(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "trackIds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 215
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .local v4, "it":J
    const/4 v6, 0x0

    .line 116
    .local v6, "$i$a$-forEach-LibraryViewModel$addAllToPlaylist$1":I
    iget-object v7, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v7, p1, v4, v5}, Lcom/muzk/app/data/PlaylistStore;->addTrack(Ljava/lang/String;J)V

    .line 215
    .end local v4    # "it":J
    .end local v6    # "$i$a$-forEach-LibraryViewModel$addAllToPlaylist$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 216
    :cond_0
    nop

    .line 116
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final addToPlaylist(Ljava/lang/String;J)V
    .locals 1
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "trackId"    # J

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore;->addTrack(Ljava/lang/String;J)V

    return-void
.end method

.method public final back()Z
    .locals 15

    .line 100
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->selection:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/Nav;

    .line 102
    .local v0, "n":Lcom/muzk/app/ui/library/Nav;
    invoke-virtual {v0}, Lcom/muzk/app/ui/library/Nav;->getFolder()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/Nav;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    return v1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    .line 104
    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v3, 0x0

    .line 210
    .local v3, "$i$f$update":I
    :cond_2
    nop

    .line 211
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 212
    .local v4, "prevValue$iv":Ljava/lang/Object;
    move-object v13, v4

    check-cast v13, Lcom/muzk/app/ui/library/Nav;

    .local v13, "it":Lcom/muzk/app/ui/library/Nav;
    const/4 v14, 0x0

    .line 104
    .local v14, "$i$a$-update-LibraryViewModel$back$1":I
    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    invoke-static/range {v5 .. v12}, Lcom/muzk/app/ui/library/Nav;->copy$default(Lcom/muzk/app/ui/library/Nav;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/library/Nav;

    move-result-object v5

    .line 212
    .end local v13    # "it":Lcom/muzk/app/ui/library/Nav;
    .end local v14    # "$i$a$-update-LibraryViewModel$back$1":I
    nop

    .line 213
    .local v5, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    nop

    .line 105
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v4    # "prevValue$iv":Ljava/lang/Object;
    .end local v5    # "nextValue$iv":Ljava/lang/Object;
    return v1
.end method

.method public final clearSelection()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->selection:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final createPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v0, p1}, Lcom/muzk/app/data/PlaylistStore;->create(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final deletePlaylist(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v0, p1}, Lcom/muzk/app/data/PlaylistStore;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public final getAskedPermission()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->askedPermission:Z

    return v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/muzk/app/ui/library/LibraryUiState;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final openFolder(Ljava/lang/String;)V
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 186
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 187
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 188
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lcom/muzk/app/ui/library/Nav;

    .local v11, "it":Lcom/muzk/app/ui/library/Nav;
    const/4 v12, 0x0

    .line 85
    .local v12, "$i$a$-update-LibraryViewModel$openFolder$1":I
    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v7, p1

    invoke-static/range {v3 .. v10}, Lcom/muzk/app/ui/library/Nav;->copy$default(Lcom/muzk/app/ui/library/Nav;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/library/Nav;

    move-result-object v3

    .line 188
    .end local v11    # "it":Lcom/muzk/app/ui/library/Nav;
    .end local v12    # "$i$a$-update-LibraryViewModel$openFolder$1":I
    nop

    .line 189
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    nop

    .line 85
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final openPlaylist(Ljava/lang/String;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 191
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 192
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lcom/muzk/app/ui/library/Nav;

    .local v11, "it":Lcom/muzk/app/ui/library/Nav;
    const/4 v12, 0x0

    .line 86
    .local v12, "$i$a$-update-LibraryViewModel$openPlaylist$1":I
    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    move-object v8, p1

    invoke-static/range {v3 .. v10}, Lcom/muzk/app/ui/library/Nav;->copy$default(Lcom/muzk/app/ui/library/Nav;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/library/Nav;

    move-result-object v3

    .line 193
    .end local v11    # "it":Lcom/muzk/app/ui/library/Nav;
    .end local v12    # "$i$a$-update-LibraryViewModel$openPlaylist$1":I
    nop

    .line 194
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    nop

    .line 86
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final reload()Lkotlinx/coroutines/Job;
    .locals 7

    .line 73
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/muzk/app/ui/library/LibraryViewModel$reload$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muzk/app/ui/library/LibraryViewModel$reload$1;-><init>(Lcom/muzk/app/ui/library/LibraryViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public final removeAllFromPlaylist(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "trackIds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 217
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .local v4, "it":J
    const/4 v6, 0x0

    .line 117
    .local v6, "$i$a$-forEach-LibraryViewModel$removeAllFromPlaylist$1":I
    iget-object v7, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v7, p1, v4, v5}, Lcom/muzk/app/data/PlaylistStore;->removeTrack(Ljava/lang/String;J)V

    .line 217
    .end local v4    # "it":J
    .end local v6    # "$i$a$-forEach-LibraryViewModel$removeAllFromPlaylist$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 218
    :cond_0
    nop

    .line 117
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final removeFromPlaylist(Ljava/lang/String;J)V
    .locals 1
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "trackId"    # J

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore;->removeTrack(Ljava/lang/String;J)V

    return-void
.end method

.method public final renamePlaylist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->store:Lcom/muzk/app/data/PlaylistStore;

    invoke-virtual {v0, p1, p2}, Lcom/muzk/app/data/PlaylistStore;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final selectAll()V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getQueue()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 201
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 202
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 203
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .local v7, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v8, 0x0

    .line 94
    .local v8, "$i$a$-map-LibraryViewModel$selectAll$visible$1":I
    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v7

    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v8    # "$i$a$-map-LibraryViewModel$selectAll$visible$1":I
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 203
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 201
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 94
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 95
    .local v0, "visible":Ljava/util/Set;
    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->selection:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$f$update":I
    :cond_1
    nop

    .line 206
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/Set;

    .local v4, "it":Ljava/util/Set;
    const/4 v5, 0x0

    .line 95
    .local v5, "$i$a$-update-LibraryViewModel$selectAll$1":I
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v4, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v0

    .line 207
    .end local v4    # "it":Ljava/util/Set;
    .end local v5    # "$i$a$-update-LibraryViewModel$selectAll$1":I
    :goto_1
    move-object v4, v6

    .line 208
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    nop

    .line 96
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final selectTab(Lcom/muzk/app/ui/library/LibraryTab;)V
    .locals 13
    .param p1, "tab"    # Lcom/muzk/app/ui/library/LibraryTab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/Nav;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/Nav;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    .line 83
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 181
    .local v1, "$i$f$update":I
    :cond_1
    nop

    .line 182
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lcom/muzk/app/ui/library/Nav;

    .local v11, "it":Lcom/muzk/app/ui/library/Nav;
    const/4 v12, 0x0

    .line 83
    .local v12, "$i$a$-update-LibraryViewModel$selectTab$1":I
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v6, p1

    invoke-static/range {v3 .. v10}, Lcom/muzk/app/ui/library/Nav;->copy$default(Lcom/muzk/app/ui/library/Nav;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/library/Nav;

    move-result-object v3

    .line 183
    .end local v11    # "it":Lcom/muzk/app/ui/library/Nav;
    .end local v12    # "$i$a$-update-LibraryViewModel$selectTab$1":I
    nop

    .line 184
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    nop

    .line 84
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final setAskedPermission(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->askedPermission:Z

    return-void
.end method

.method public final setPermission(Z)V
    .locals 13
    .param p1, "granted"    # Z

    .line 69
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->nav:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 177
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lcom/muzk/app/ui/library/Nav;

    .local v11, "it":Lcom/muzk/app/ui/library/Nav;
    const/4 v12, 0x0

    .line 69
    .local v12, "$i$a$-update-LibraryViewModel$setPermission$1":I
    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move v4, p1

    invoke-static/range {v3 .. v10}, Lcom/muzk/app/ui/library/Nav;->copy$default(Lcom/muzk/app/ui/library/Nav;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/library/Nav;

    move-result-object v3

    .line 178
    .end local v11    # "it":Lcom/muzk/app/ui/library/Nav;
    .end local v12    # "$i$a$-update-LibraryViewModel$setPermission$1":I
    nop

    .line 179
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    nop

    .line 70
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryViewModel;->reload()Lkotlinx/coroutines/Job;

    .line 71
    :cond_1
    return-void
.end method

.method public final toggleSelection(J)V
    .locals 6
    .param p1, "trackId"    # J

    .line 89
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryViewModel;->selection:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 196
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 197
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/util/Set;

    .local v3, "it":Ljava/util/Set;
    const/4 v4, 0x0

    .line 89
    .local v4, "$i$a$-update-LibraryViewModel$toggleSelection$1":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 198
    .end local v3    # "it":Ljava/util/Set;
    .end local v4    # "$i$a$-update-LibraryViewModel$toggleSelection$1":I
    :goto_0
    move-object v3, v5

    .line 199
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    nop

    .line 89
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method
