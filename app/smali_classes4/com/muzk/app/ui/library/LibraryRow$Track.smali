.class public final Lcom/muzk/app/ui/library/LibraryRow$Track;
.super Ljava/lang/Object;
.source "LibraryViewModel.kt"

# interfaces
.implements Lcom/muzk/app/ui/library/LibraryRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/library/LibraryRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J3\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/muzk/app/ui/library/LibraryRow$Track;",
        "Lcom/muzk/app/ui/library/LibraryRow;",
        "track",
        "Lcom/muzk/app/data/LocalTrack;",
        "playlistId",
        "",
        "selecting",
        "",
        "selected",
        "<init>",
        "(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZ)V",
        "getTrack",
        "()Lcom/muzk/app/data/LocalTrack;",
        "getPlaylistId",
        "()Ljava/lang/String;",
        "getSelecting",
        "()Z",
        "getSelected",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
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
.field private final playlistId:Ljava/lang/String;

.field private final selected:Z

.field private final selecting:Z

.field private final track:Lcom/muzk/app/data/LocalTrack;


# direct methods
.method public constructor <init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "track"    # Lcom/muzk/app/data/LocalTrack;
    .param p2, "playlistId"    # Ljava/lang/String;
    .param p3, "selecting"    # Z
    .param p4, "selected"    # Z

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    .line 24
    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    .line 26
    iput-boolean p4, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 22
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 25
    move p3, v0

    .line 22
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 26
    move p4, v0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/library/LibraryRow$Track;-><init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZ)V

    .line 27
    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/ui/library/LibraryRow$Track;Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/muzk/app/ui/library/LibraryRow$Track;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/library/LibraryRow$Track;->copy(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZ)Lcom/muzk/app/ui/library/LibraryRow$Track;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/muzk/app/data/LocalTrack;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    return v0
.end method

.method public final copy(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZ)Lcom/muzk/app/ui/library/LibraryRow$Track;
    .locals 1

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/muzk/app/ui/library/LibraryRow$Track;-><init>(Lcom/muzk/app/data/LocalTrack;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/ui/library/LibraryRow$Track;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/library/LibraryRow$Track;

    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    iget-boolean v4, v1, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    iget-boolean v1, v1, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelected()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    return v0
.end method

.method public final getSelecting()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    return v0
.end method

.method public final getTrack()Lcom/muzk/app/data/LocalTrack;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    invoke-virtual {v0}, Lcom/muzk/app/data/LocalTrack;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->track:Lcom/muzk/app/data/LocalTrack;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->playlistId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selecting:Z

    iget-boolean v3, p0, Lcom/muzk/app/ui/library/LibraryRow$Track;->selected:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Track(track="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", playlistId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
