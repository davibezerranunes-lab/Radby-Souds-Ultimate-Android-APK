.class public final Lcom/muzk/app/data/PlaylistStore;
.super Ljava/lang/Object;
.source "PlaylistStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/data/PlaylistStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistStore.kt\ncom/muzk/app/data/PlaylistStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n295#2,2:105\n295#2,2:107\n827#2:109\n855#2,2:110\n1557#2:112\n1628#2,2:113\n1557#2:115\n1628#2,3:116\n1630#2:119\n1863#2,2:120\n1557#2:122\n1628#2,3:123\n1557#2:126\n1628#2,3:127\n827#2:130\n855#2,2:131\n1557#2:133\n1628#2,3:134\n1557#2:137\n1628#2,3:138\n*S KotlinDebug\n*F\n+ 1 PlaylistStore.kt\ncom/muzk/app/data/PlaylistStore\n*L\n25#1:105,2\n62#1:107,2\n63#1:109\n63#1:110,2\n69#1:112\n69#1:113,2\n75#1:115\n75#1:116,3\n69#1:119\n82#1:120,2\n31#1:122\n31#1:123,3\n40#1:126\n40#1:127,3\n43#1:130\n43#1:131,2\n46#1:133\n46#1:134,3\n50#1:137\n50#1:138,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 %2\u00020\u0001:\u0001%B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0011J\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016J(\u0010\u001e\u001a\u00020\u00192\u001e\u0010\u001f\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0 H\u0002J\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u000e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010$\u001a\u00020\u00192\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006&"
    }
    d2 = {
        "Lcom/muzk/app/data/PlaylistStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "file",
        "Ljava/io/File;",
        "_playlists",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/muzk/app/data/Playlist;",
        "playlists",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPlaylists",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "create",
        "",
        "name",
        "isLiked",
        "",
        "trackId",
        "",
        "toggleLike",
        "rename",
        "",
        "id",
        "delete",
        "addTrack",
        "removeTrack",
        "mutate",
        "block",
        "Lkotlin/Function1;",
        "withLiked",
        "list",
        "read",
        "write",
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
.field public static final Companion:Lcom/muzk/app/data/PlaylistStore$Companion;

.field public static final LIKED_ID:Ljava/lang/String; = "liked"

.field public static final LIKED_NAME:Ljava/lang/String; = "M\u00fasicas curtidas"

.field private static volatile instance:Lcom/muzk/app/data/PlaylistStore;


# instance fields
.field private final _playlists:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;>;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private final playlists:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-y4lsv_GoaOYLiLogIGV74tswaE(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/data/PlaylistStore;->delete$lambda$7(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$999yF6NjZaSz0V2I_318xFb_jUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/data/PlaylistStore;->create$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NGNbBhWK7h4ra248LRs0cixBvK4(ZJLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore;->toggleLike$lambda$3(ZJLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ajtJuiY1AMxrW-pM2DiKdE9QynE(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore;->addTrack$lambda$9(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cZ9qgg2ZDKmeqH-N0sN3Hr75wb4(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/data/PlaylistStore;->rename$lambda$5(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k1gotZtm_SZcVpSRdWtdMepTpsw(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore;->removeTrack$lambda$11(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/data/PlaylistStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/data/PlaylistStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/data/PlaylistStore;->Companion:Lcom/muzk/app/data/PlaylistStore$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "playlists.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->file:Ljava/io/File;

    .line 16
    invoke-direct {p0}, Lcom/muzk/app/data/PlaylistStore;->read()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/muzk/app/data/PlaylistStore;->withLiked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->_playlists:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 17
    iget-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->_playlists:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->playlists:Lkotlinx/coroutines/flow/StateFlow;

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/muzk/app/data/PlaylistStore;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/muzk/app/data/PlaylistStore;
    .locals 1

    .line 13
    sget-object v0, Lcom/muzk/app/data/PlaylistStore;->instance:Lcom/muzk/app/data/PlaylistStore;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/muzk/app/data/PlaylistStore;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/muzk/app/data/PlaylistStore;

    .line 13
    sput-object p0, Lcom/muzk/app/data/PlaylistStore;->instance:Lcom/muzk/app/data/PlaylistStore;

    return-void
.end method

.method private static final addTrack$lambda$9(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;
    .locals 17
    .param p0, "$id"    # Ljava/lang/String;
    .param p1, "$trackId"    # J
    .param p3, "list"    # Ljava/util/List;

    move-object/from16 v0, p3

    const-string v1, "list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 133
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 134
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 135
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v7

    check-cast v14, Lcom/muzk/app/data/Playlist;

    .local v14, "it":Lcom/muzk/app/data/Playlist;
    const/4 v15, 0x0

    .line 46
    .local v15, "$i$a$-map-PlaylistStore$addTrack$1$1":I
    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v13, p0

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x3

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v14

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcom/muzk/app/data/Playlist;->copy$default(Lcom/muzk/app/data/Playlist;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/muzk/app/data/Playlist;

    move-result-object v8

    move-object v14, v8

    .line 135
    .end local v14    # "it":Lcom/muzk/app/data/Playlist;
    .end local v15    # "$i$a$-map-PlaylistStore$addTrack$1$1":I
    :cond_0
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 133
    nop

    .line 46
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v3
.end method

.method private static final create$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "$id"    # Ljava/lang/String;
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "it"    # Ljava/util/List;

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/muzk/app/data/Playlist;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/muzk/app/data/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final delete$lambda$7(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p0, "$id"    # Ljava/lang/String;
    .param p1, "list"    # Ljava/util/List;

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 130
    .local v1, "$i$f$filterNot":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$f$filterNotTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/muzk/app/data/Playlist;

    .local v7, "it":Lcom/muzk/app/data/Playlist;
    const/4 v8, 0x0

    .line 43
    .local v8, "$i$a$-filterNot-PlaylistStore$delete$1$1":I
    invoke-virtual {v7}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "liked"

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 131
    .end local v7    # "it":Lcom/muzk/app/data/Playlist;
    .end local v8    # "$i$a$-filterNot-PlaylistStore$delete$1$1":I
    :goto_1
    if-nez v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterNotTo":I
    check-cast v2, Ljava/util/List;

    .line 130
    nop

    .line 43
    .end local v0    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterNot":I
    return-object v2
.end method

.method private final declared-synchronized mutate(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->_playlists:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    .local v0, "updated":Ljava/util/List;
    iget-object v1, p0, Lcom/muzk/app/data/PlaylistStore;->_playlists:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, v0}, Lcom/muzk/app/data/PlaylistStore;->write(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 54
    .end local v0    # "updated":Ljava/util/List;
    .end local p0    # "this":Lcom/muzk/app/data/PlaylistStore;
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final read()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;"
        }
    .end annotation

    .line 66
    const-string v0, "getString(...)"

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v1, p0

    check-cast v1, Lcom/muzk/app/data/PlaylistStore;

    .local v1, "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    const/4 v2, 0x0

    .line 67
    .local v2, "$i$a$-runCatching-PlaylistStore$read$1":I
    iget-object v3, v1, Lcom/muzk/app/data/PlaylistStore;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, v1, Lcom/muzk/app/data/PlaylistStore;->file:Ljava/io/File;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "arr":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 112
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v4

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 113
    .local v10, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v11

    check-cast v12, Lkotlin/collections/IntIterator;

    invoke-virtual {v12}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    .line 114
    .local v12, "item$iv$iv":I
    move v13, v12

    .local v13, "i":I
    const/4 v14, 0x0

    .line 70
    .local v14, "$i$a$-map-PlaylistStore$read$1$1":I
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 71
    .local v15, "o":Lorg/json/JSONObject;
    const-string v8, "tracks"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 72
    .local v8, "ids":Lorg/json/JSONArray;
    nop

    .line 73
    const-string v5, "id"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    move-object/from16 v18, v1

    .end local v1    # "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    .local v18, "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    const-string v1, "name"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object/from16 v19, v0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    move/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "$i$a$-runCatching-PlaylistStore$read$1":I
    .local v20, "$i$a$-runCatching-PlaylistStore$read$1":I
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 115
    .local v17, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    const/16 v3, 0xa

    .end local v3    # "arr":Lorg/json/JSONArray;
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .local v16, "$this$map$iv":Ljava/lang/Iterable;
    .local v21, "arr":Lorg/json/JSONArray;
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 116
    .local v22, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v24, v23

    check-cast v24, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v24 .. v24}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v24

    .line 117
    .local v24, "item$iv$iv":I
    move/from16 v25, v24

    .local v25, "it":I
    const/16 v26, 0x0

    .line 75
    .local v26, "$i$a$-map-PlaylistStore$read$1$1$1":I
    move/from16 v3, v25

    .end local v25    # "it":I
    .local v3, "it":I
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v27

    .end local v3    # "it":I
    .end local v26    # "$i$a$-map-PlaylistStore$read$1$1$1":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 117
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_1

    .line 118
    .end local v24    # "item$iv$iv":I
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v22    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 115
    nop

    .line 72
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$map":I
    new-instance v0, Lcom/muzk/app/data/Playlist;

    invoke-direct {v0, v5, v1, v2}, Lcom/muzk/app/data/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 76
    nop

    .line 114
    .end local v8    # "ids":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v14    # "$i$a$-map-PlaylistStore$read$1$1":I
    .end local v15    # "o":Lorg/json/JSONObject;
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    const/4 v5, 0x0

    const/16 v8, 0xa

    goto/16 :goto_0

    .line 119
    .end local v12    # "item$iv$iv":I
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v18    # "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    .end local v20    # "$i$a$-runCatching-PlaylistStore$read$1":I
    .end local v21    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    .local v2, "$i$a$-runCatching-PlaylistStore$read$1":I
    .local v3, "arr":Lorg/json/JSONArray;
    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    :cond_2
    move-object/from16 v18, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    .end local v1    # "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    .end local v2    # "$i$a$-runCatching-PlaylistStore$read$1":I
    .end local v3    # "arr":Lorg/json/JSONArray;
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapTo":I
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v18    # "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    .restart local v20    # "$i$a$-runCatching-PlaylistStore$read$1":I
    .restart local v21    # "arr":Lorg/json/JSONArray;
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 112
    nop

    .line 77
    .end local v6    # "$i$f$map":I
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    nop

    .line 66
    .end local v18    # "$this$read_u24lambda_u2416":Lcom/muzk/app/data/PlaylistStore;
    .end local v20    # "$i$a$-runCatching-PlaylistStore$read$1":I
    .end local v21    # "arr":Lorg/json/JSONArray;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final removeTrack$lambda$11(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;
    .locals 17
    .param p0, "$id"    # Ljava/lang/String;
    .param p1, "$trackId"    # J
    .param p3, "list"    # Ljava/util/List;

    move-object/from16 v0, p3

    const-string v1, "list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 137
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 138
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 139
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v7

    check-cast v14, Lcom/muzk/app/data/Playlist;

    .local v14, "it":Lcom/muzk/app/data/Playlist;
    const/4 v15, 0x0

    .line 50
    .local v15, "$i$a$-map-PlaylistStore$removeTrack$1$1":I
    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v13, p0

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x3

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v14

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcom/muzk/app/data/Playlist;->copy$default(Lcom/muzk/app/data/Playlist;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/muzk/app/data/Playlist;

    move-result-object v8

    move-object v14, v8

    .line 139
    .end local v14    # "it":Lcom/muzk/app/data/Playlist;
    .end local v15    # "$i$a$-map-PlaylistStore$removeTrack$1$1":I
    :cond_0
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 137
    nop

    .line 50
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v3
.end method

.method private static final rename$lambda$5(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .param p0, "$id"    # Ljava/lang/String;
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    move-object/from16 v0, p2

    const-string v1, "list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 127
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 128
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v7

    check-cast v14, Lcom/muzk/app/data/Playlist;

    .local v14, "it":Lcom/muzk/app/data/Playlist;
    const/4 v15, 0x0

    .line 40
    .local v15, "$i$a$-map-PlaylistStore$rename$1$1":I
    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v13, p0

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x5

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v14

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcom/muzk/app/data/Playlist;->copy$default(Lcom/muzk/app/data/Playlist;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/muzk/app/data/Playlist;

    move-result-object v8

    move-object v14, v8

    .line 128
    .end local v14    # "it":Lcom/muzk/app/data/Playlist;
    .end local v15    # "$i$a$-map-PlaylistStore$rename$1$1":I
    :cond_0
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 126
    nop

    .line 40
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v3
.end method

.method private static final toggleLike$lambda$3(ZJLjava/util/List;)Ljava/util/List;
    .locals 16
    .param p0, "$liked"    # Z
    .param p1, "$trackId"    # J
    .param p3, "list"    # Ljava/util/List;

    move-object/from16 v0, p3

    const-string v1, "list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 123
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 124
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v7

    check-cast v14, Lcom/muzk/app/data/Playlist;

    .local v14, "it":Lcom/muzk/app/data/Playlist;
    const/4 v15, 0x0

    .line 32
    .local v15, "$i$a$-map-PlaylistStore$toggleLike$1$1":I
    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "liked"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :goto_1
    move-object v11, v8

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lcom/muzk/app/data/Playlist;->copy$default(Lcom/muzk/app/data/Playlist;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/muzk/app/data/Playlist;

    move-result-object v8

    move-object v14, v8

    .line 124
    .end local v14    # "it":Lcom/muzk/app/data/Playlist;
    .end local v15    # "$i$a$-map-PlaylistStore$toggleLike$1$1":I
    :goto_2
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 122
    nop

    .line 34
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v3
.end method

.method private final withLiked(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;"
        }
    .end annotation

    .line 62
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "liked"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lcom/muzk/app/data/Playlist;

    .local v5, "it":Lcom/muzk/app/data/Playlist;
    const/4 v6, 0x0

    .line 62
    .local v6, "$i$a$-firstOrNull-PlaylistStore$withLiked$liked$1":I
    invoke-virtual {v5}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 107
    .end local v5    # "it":Lcom/muzk/app/data/Playlist;
    .end local v6    # "$i$a$-firstOrNull-PlaylistStore$withLiked$liked$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 108
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 62
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/muzk/app/data/Playlist;

    if-nez v3, :cond_2

    new-instance v3, Lcom/muzk/app/data/Playlist;

    const-string v0, "M\u00fasicas curtidas"

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v0, v1}, Lcom/muzk/app/data/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    move-object v0, v3

    .line 63
    .local v0, "liked":Lcom/muzk/app/data/Playlist;
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 109
    .local v3, "$i$f$filterNot":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 110
    .local v7, "$i$f$filterNotTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/muzk/app/data/Playlist;

    .local v10, "it":Lcom/muzk/app/data/Playlist;
    const/4 v11, 0x0

    .line 63
    .local v11, "$i$a$-filterNot-PlaylistStore$withLiked$1":I
    invoke-virtual {v10}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 110
    .end local v10    # "it":Lcom/muzk/app/data/Playlist;
    .end local v11    # "$i$a$-filterNot-PlaylistStore$withLiked$1":I
    if-nez v10, :cond_3

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterNotTo":I
    move-object v4, v5

    check-cast v4, Ljava/util/List;

    .line 109
    nop

    .end local v2    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filterNot":I
    check-cast v4, Ljava/lang/Iterable;

    .line 63
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private final write(Ljava/util/List;)V
    .locals 10
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v0, "arr":Lorg/json/JSONArray;
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/muzk/app/data/Playlist;

    .local v5, "p":Lcom/muzk/app/data/Playlist;
    const/4 v6, 0x0

    .line 83
    .local v6, "$i$a$-forEach-PlaylistStore$write$1":I
    nop

    .line 84
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v8, "id"

    invoke-virtual {v5}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 86
    const-string v8, "name"

    invoke-virtual {v5}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 87
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v9, "tracks"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 83
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    nop

    .line 120
    .end local v5    # "p":Lcom/muzk/app/data/Playlist;
    .end local v6    # "$i$a$-forEach-PlaylistStore$write$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 121
    :cond_0
    nop

    .line 90
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Lcom/muzk/app/data/PlaylistStore;->file:Ljava/io/File;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final addTrack(Ljava/lang/String;J)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "trackId"    # J

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/muzk/app/data/PlaylistStore;->mutate(Lkotlin/jvm/functions/Function1;)V

    .line 47
    return-void
.end method

.method public final create(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/muzk/app/data/PlaylistStore;->mutate(Lkotlin/jvm/functions/Function1;)V

    .line 22
    return-object v0
.end method

.method public final delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/muzk/app/data/PlaylistStore;->mutate(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getPlaylists()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->playlists:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isLiked(J)Z
    .locals 8
    .param p1, "trackId"    # J

    .line 25
    iget-object v0, p0, Lcom/muzk/app/data/PlaylistStore;->_playlists:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/muzk/app/data/Playlist;

    .local v4, "it":Lcom/muzk/app/data/Playlist;
    const/4 v5, 0x0

    .line 25
    .local v5, "$i$a$-firstOrNull-PlaylistStore$isLiked$1":I
    invoke-virtual {v4}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "liked"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 105
    .end local v4    # "it":Lcom/muzk/app/data/Playlist;
    .end local v5    # "$i$a$-firstOrNull-PlaylistStore$isLiked$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 106
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 25
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/muzk/app/data/Playlist;

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/muzk/app/data/Playlist;->getTrackIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public final removeTrack(Ljava/lang/String;J)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "trackId"    # J

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/muzk/app/data/PlaylistStore;->mutate(Lkotlin/jvm/functions/Function1;)V

    .line 51
    return-void
.end method

.method public final rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/muzk/app/data/PlaylistStore;->mutate(Lkotlin/jvm/functions/Function1;)V

    .line 41
    return-void
.end method

.method public final toggleLike(J)Z
    .locals 2
    .param p1, "trackId"    # J

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/PlaylistStore;->isLiked(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 30
    .local v0, "liked":Z
    new-instance v1, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, p2}, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;-><init>(ZJ)V

    invoke-direct {p0, v1}, Lcom/muzk/app/data/PlaylistStore;->mutate(Lkotlin/jvm/functions/Function1;)V

    .line 36
    return v0
.end method
