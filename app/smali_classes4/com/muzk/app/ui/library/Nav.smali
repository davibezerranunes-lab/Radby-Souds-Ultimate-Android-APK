.class final Lcom/muzk/app/ui/library/Nav;
.super Ljava/lang/Object;
.source "LibraryViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B=\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J?\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/muzk/app/ui/library/Nav;",
        "",
        "hasPermission",
        "",
        "loaded",
        "tab",
        "Lcom/muzk/app/ui/library/LibraryTab;",
        "folder",
        "",
        "playlistId",
        "<init>",
        "(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;)V",
        "getHasPermission",
        "()Z",
        "getLoaded",
        "getTab",
        "()Lcom/muzk/app/ui/library/LibraryTab;",
        "getFolder",
        "()Ljava/lang/String;",
        "getPlaylistId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final folder:Ljava/lang/String;

.field private final hasPermission:Z

.field private final loaded:Z

.field private final playlistId:Ljava/lang/String;

.field private final tab:Lcom/muzk/app/ui/library/LibraryTab;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/muzk/app/ui/library/Nav;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hasPermission"    # Z
    .param p2, "loaded"    # Z
    .param p3, "tab"    # Lcom/muzk/app/ui/library/LibraryTab;
    .param p4, "folder"    # Ljava/lang/String;
    .param p5, "playlistId"    # Ljava/lang/String;

    const-string v0, "tab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    .line 51
    iput-boolean p2, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    .line 52
    iput-object p3, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    .line 53
    iput-object p4, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .line 49
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 50
    move p7, v0

    goto :goto_0

    .line 49
    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 51
    goto :goto_1

    .line 49
    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 52
    sget-object p3, Lcom/muzk/app/ui/library/LibraryTab;->TRACKS:Lcom/muzk/app/ui/library/LibraryTab;

    move-object v1, p3

    goto :goto_2

    .line 49
    :cond_2
    move-object v1, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 53
    move-object v2, p2

    goto :goto_3

    .line 49
    :cond_3
    move-object v2, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 54
    move-object p6, p2

    goto :goto_4

    .line 49
    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move p3, v0

    move-object p4, v1

    move-object p5, v2

    invoke-direct/range {p1 .. p6}, Lcom/muzk/app/ui/library/Nav;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/ui/library/Nav;ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/library/Nav;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/muzk/app/ui/library/Nav;->copy(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;)Lcom/muzk/app/ui/library/Nav;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    return v0
.end method

.method public final component3()Lcom/muzk/app/ui/library/LibraryTab;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;)Lcom/muzk/app/ui/library/Nav;
    .locals 7

    const-string v0, "tab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/muzk/app/ui/library/Nav;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/muzk/app/ui/library/Nav;-><init>(ZZLcom/muzk/app/ui/library/LibraryTab;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/ui/library/Nav;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/library/Nav;

    iget-boolean v3, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    iget-object v4, v1, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    iget-object v1, v1, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFolder()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasPermission()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    return v0
.end method

.method public final getLoaded()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    return v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTab()Lcom/muzk/app/ui/library/LibraryTab;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    invoke-virtual {v2}, Lcom/muzk/app/ui/library/LibraryTab;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/Nav;->hasPermission:Z

    iget-boolean v1, p0, Lcom/muzk/app/ui/library/Nav;->loaded:Z

    iget-object v2, p0, Lcom/muzk/app/ui/library/Nav;->tab:Lcom/muzk/app/ui/library/LibraryTab;

    iget-object v3, p0, Lcom/muzk/app/ui/library/Nav;->folder:Ljava/lang/String;

    iget-object v4, p0, Lcom/muzk/app/ui/library/Nav;->playlistId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nav(hasPermission="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", loaded="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
