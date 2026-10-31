.class public final Lcom/muzk/app/ui/home/HomeUiState;
.super Ljava/lang/Object;
.source "HomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0003J\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u00c6\u0003J=\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/muzk/app/ui/home/HomeUiState;",
        "",
        "hasPermission",
        "",
        "loaded",
        "tiles",
        "",
        "Lcom/muzk/app/ui/home/HomeTile;",
        "mostPlayed",
        "Lcom/muzk/app/ui/home/HomeTrack;",
        "<init>",
        "(ZZLjava/util/List;Ljava/util/List;)V",
        "getHasPermission",
        "()Z",
        "getLoaded",
        "getTiles",
        "()Ljava/util/List;",
        "getMostPlayed",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final hasPermission:Z

.field private final loaded:Z

.field private final mostPlayed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/muzk/app/ui/home/HomeUiState;-><init>(ZZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "hasPermission"    # Z
    .param p2, "loaded"    # Z
    .param p3, "tiles"    # Ljava/util/List;
    .param p4, "mostPlayed"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tiles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mostPlayed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    .line 33
    iput-boolean p2, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    .line 34
    iput-object p3, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 31
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 32
    move p1, v0

    .line 31
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 33
    move p2, v0

    .line 31
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 31
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/home/HomeUiState;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/ui/home/HomeUiState;ZZLjava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/muzk/app/ui/home/HomeUiState;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/home/HomeUiState;->copy(ZZLjava/util/List;Ljava/util/List;)Lcom/muzk/app/ui/home/HomeUiState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZZLjava/util/List;Ljava/util/List;)Lcom/muzk/app/ui/home/HomeUiState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTrack;",
            ">;)",
            "Lcom/muzk/app/ui/home/HomeUiState;"
        }
    .end annotation

    const-string v0, "tiles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mostPlayed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/muzk/app/ui/home/HomeUiState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/muzk/app/ui/home/HomeUiState;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/ui/home/HomeUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/home/HomeUiState;

    iget-boolean v3, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    iget-object v4, v1, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    iget-object v1, v1, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHasPermission()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    return v0
.end method

.method public final getLoaded()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    return v0
.end method

.method public final getMostPlayed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTrack;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    return-object v0
.end method

.method public final getTiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/home/HomeTile;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/muzk/app/ui/home/HomeUiState;->hasPermission:Z

    iget-boolean v1, p0, Lcom/muzk/app/ui/home/HomeUiState;->loaded:Z

    iget-object v2, p0, Lcom/muzk/app/ui/home/HomeUiState;->tiles:Ljava/util/List;

    iget-object v3, p0, Lcom/muzk/app/ui/home/HomeUiState;->mostPlayed:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomeUiState(hasPermission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", loaded="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mostPlayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
