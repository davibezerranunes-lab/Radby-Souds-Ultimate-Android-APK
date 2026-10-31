.class public final Lcom/muzk/app/ui/library/LibraryUiState;
.super Ljava/lang/Object;
.source "LibraryViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B}\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000b\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003J\u000f\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bH\u00c6\u0003J\u000f\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000bH\u00c6\u0003J\u000f\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bH\u00c6\u0003J\u007f\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000b2\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bH\u00c6\u0001J\u0013\u0010-\u001a\u00020\u00032\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010/\u001a\u000200H\u00d6\u0001J\t\u00101\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001dR\u0011\u0010!\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0015R\u0011\u0010\"\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0015\u00a8\u00062"
    }
    d2 = {
        "Lcom/muzk/app/ui/library/LibraryUiState;",
        "",
        "hasPermission",
        "",
        "loaded",
        "tab",
        "Lcom/muzk/app/ui/library/LibraryTab;",
        "openFolder",
        "",
        "openPlaylistId",
        "rows",
        "",
        "Lcom/muzk/app/ui/library/LibraryRow;",
        "queue",
        "Lcom/muzk/app/data/LocalTrack;",
        "playlists",
        "Lcom/muzk/app/data/Playlist;",
        "selected",
        "<init>",
        "(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getHasPermission",
        "()Z",
        "getLoaded",
        "getTab",
        "()Lcom/muzk/app/ui/library/LibraryTab;",
        "getOpenFolder",
        "()Ljava/lang/String;",
        "getOpenPlaylistId",
        "getRows",
        "()Ljava/util/List;",
        "getQueue",
        "getPlaylists",
        "getSelected",
        "isInside",
        "isSelecting",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final hasPermission:Z

.field private final loaded:Z

.field private final openFolder:Ljava/lang/String;

.field private final openPlaylistId:Ljava/lang/String;

.field private final playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/library/LibraryRow;",
            ">;"
        }
    .end annotation
.end field

.field private final selected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final tab:Lcom/muzk/app/ui/library/LibraryTab;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/muzk/app/ui/library/LibraryUiState;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "hasPermission"    # Z
    .param p2, "loaded"    # Z
    .param p3, "tab"    # Lcom/muzk/app/ui/library/LibraryTab;
    .param p4, "openFolder"    # Ljava/lang/String;
    .param p5, "openPlaylistId"    # Ljava/lang/String;
    .param p6, "rows"    # Ljava/util/List;
    .param p7, "queue"    # Ljava/util/List;
    .param p8, "playlists"    # Ljava/util/List;
    .param p9, "selected"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/muzk/app/ui/library/LibraryTab;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/muzk/app/ui/library/LibraryRow;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rows"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlists"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selected"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    .line 34
    iput-boolean p2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    .line 35
    iput-object p3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    .line 36
    iput-object p4, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    .line 40
    iput-object p7, p0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    .line 41
    iput-object p8, p0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    .line 43
    iput-object p9, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    .line 32
    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 32
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 33
    move v1, v2

    goto :goto_0

    .line 32
    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 34
    goto :goto_1

    .line 32
    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 35
    sget-object v3, Lcom/muzk/app/ui/library/LibraryTab;->TRACKS:Lcom/muzk/app/ui/library/LibraryTab;

    goto :goto_2

    .line 32
    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 36
    move-object v4, v5

    goto :goto_3

    .line 32
    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 37
    goto :goto_4

    .line 32
    :cond_4
    move-object v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_5

    .line 32
    :cond_5
    move-object v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_6

    .line 32
    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_7

    .line 32
    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    .line 32
    :cond_8
    move-object/from16 v0, p9

    :goto_8
    move-object p1, p0

    move p2, v1

    move p3, v2

    move-object p4, v3

    move-object p5, v4

    move-object p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v0

    invoke-direct/range {p1 .. p10}, Lcom/muzk/app/ui/library/LibraryUiState;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/ui/library/LibraryUiState;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/muzk/app/ui/library/LibraryUiState;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/muzk/app/ui/library/LibraryUiState;->copy(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/muzk/app/ui/library/LibraryUiState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    return v0
.end method

.method public final component3()Lcom/muzk/app/ui/library/LibraryTab;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/library/LibraryRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/muzk/app/ui/library/LibraryUiState;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/muzk/app/ui/library/LibraryTab;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/muzk/app/ui/library/LibraryRow;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;)",
            "Lcom/muzk/app/ui/library/LibraryUiState;"
        }
    .end annotation

    const-string v0, "tab"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rows"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlists"

    move-object/from16 v14, p8

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selected"

    move-object/from16 v15, p9

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/muzk/app/ui/library/LibraryUiState;

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/muzk/app/ui/library/LibraryUiState;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/ui/library/LibraryUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/library/LibraryUiState;

    iget-boolean v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    iget-object v1, v1, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getHasPermission()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    return v0
.end method

.method public final getLoaded()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    return v0
.end method

.method public final getOpenFolder()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenPlaylistId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/Playlist;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    return-object v0
.end method

.method public final getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    return-object v0
.end method

.method public final getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/library/LibraryRow;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    return-object v0
.end method

.method public final getSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    return-object v0
.end method

.method public final getTab()Lcom/muzk/app/ui/library/LibraryTab;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    invoke-virtual {v2}, Lcom/muzk/app/ui/library/LibraryTab;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isInside()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSelecting()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryUiState;->hasPermission:Z

    iget-boolean v1, p0, Lcom/muzk/app/ui/library/LibraryUiState;->loaded:Z

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryUiState;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/muzk/app/ui/library/LibraryUiState;->openPlaylistId:Ljava/lang/String;

    iget-object v5, p0, Lcom/muzk/app/ui/library/LibraryUiState;->rows:Ljava/util/List;

    iget-object v6, p0, Lcom/muzk/app/ui/library/LibraryUiState;->queue:Ljava/util/List;

    iget-object v7, p0, Lcom/muzk/app/ui/library/LibraryUiState;->playlists:Ljava/util/List;

    iget-object v8, p0, Lcom/muzk/app/ui/library/LibraryUiState;->selected:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LibraryUiState(hasPermission="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", loaded="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openPlaylistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playlists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
